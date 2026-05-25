# ── 1. BUILDER STAGE ──────────────────────────────────────────
FROM node:24-alpine AS builder

WORKDIR /app

# Copy manifest dulu (memanfaatkan layer cache Docker)
COPY package*.json ./

# npm ci: instalasi bersih dari lock file, lebih deterministik dari npm install
RUN npm ci

# Copy seluruh source code
COPY . .

# Build Next.js (output: standalone)
# postbuild otomatis copy public/ dan .next/static/ ke dalam .next/standalone/
RUN npm run build

# ── 2. RUNNER STAGE ───────────────────────────────────────────
FROM node:24-alpine AS runner

WORKDIR /app

# Set production environment
ENV NODE_ENV=production \
  PORT=3000 \
  HOSTNAME=0.0.0.0

# Buat user non-root untuk keamanan (jangan jalankan app sebagai root)
RUN addgroup --system --gid 1001 nodejs && \
  adduser --system --uid 1001 nextjs

# Copy hasil build standalone (sudah include public/ dan .next/static/ via postbuild)
COPY --from=builder --chown=nextjs:nodejs /app/.next/standalone ./

# Jalankan sebagai user non-root
USER nextjs

EXPOSE 3000

# Health check agar Docker & Compose tahu container benar-benar siap
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
  CMD wget -qO- http://localhost:3000/ || exit 1

# server.js ada di root /app/ setelah COPY standalone
CMD ["node", "server.js"]

