#!/bin/sh
# ─────────────────────────────────────────────────────────────
# migrate.sh — Jalankan file migrasi SQL yang belum dijalankan
#
# Cara kerja:
# 1. Buat tabel `schema_migrations` jika belum ada
# 2. Loop semua file di /migrations/*.sql (urutan abjad = urutan nomor)
# 3. Jika file belum tercatat di `schema_migrations`, jalankan & catat
# 4. Jika sudah dijalankan, skip
#
# Dijalankan dari dalam container db-webdinamis via:
#   docker exec db-webdinamis sh /migrations/migrate.sh
# ─────────────────────────────────────────────────────────────

DB_HOST="${DB_HOST:-localhost}"
DB_USER="${MARIADB_USER}"
DB_PASS="${MARIADB_PASSWORD}"
DB_NAME="${MARIADB_DATABASE}"
MIGRATIONS_DIR="/migrations"

echo "=== DB Migration Runner ==="
echo "Database : $DB_NAME"
echo "Host     : $DB_HOST"
echo ""

# Helper: jalankan SQL
run_sql() {
  mariadb -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" -e "$1" 2>&1
}

# Buat tabel tracking migrasi jika belum ada
run_sql "CREATE TABLE IF NOT EXISTS schema_migrations (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  filename VARCHAR(255) NOT NULL,
  applied_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY (filename)
);"

echo "Mencari file migrasi di $MIGRATIONS_DIR ..."
echo ""

# Loop semua file .sql kecuali dirinya sendiri, urut abjad (= urut nomor)
for filepath in $(ls "$MIGRATIONS_DIR"/*.sql 2>/dev/null | sort); do
  filename=$(basename "$filepath")

  # Cek apakah sudah pernah dijalankan
  count=$(mariadb -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" \
    -sN -e "SELECT COUNT(*) FROM schema_migrations WHERE filename='$filename';" 2>/dev/null)

  if [ "$count" = "1" ]; then
    echo "  [SKIP] $filename (sudah dijalankan)"
  else
    echo "  [RUN ] $filename ..."
    # Jalankan file SQL
    mariadb -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < "$filepath"
    EXIT_CODE=$?

    if [ $EXIT_CODE -eq 0 ]; then
      # Catat ke tabel tracking
      run_sql "INSERT INTO schema_migrations (filename) VALUES ('$filename');"
      echo "  [OK  ] $filename berhasil dijalankan"
    else
      echo "  [ERR ] $filename GAGAL (exit code: $EXIT_CODE)"
      echo "  Deploy dibatalkan."
      exit 1
    fi
  fi
done

echo ""
echo "=== Migrasi selesai ==="
