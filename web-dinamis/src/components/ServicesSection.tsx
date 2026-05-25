import { getLayanan } from "@/app/actions/layanan";
import DynamicIcon from "@/components/DynamicIcon";

export default async function ServicesSection() {
  const layanan = await getLayanan();

  return (
    <section id="services" className="services">
      <h2 className="section-title">
        Inovasi <span className="text-gradient">Terdepan</span>
      </h2>
      <p className="section-subtitle">
        Kami menyediakan solusi teknologi end-to-end untuk transformasi digital bisnis Anda
      </p>
      <div className="services-grid">
        {layanan.length === 0 ? (
          <p style={{ textAlign: "center", color: "#94a3b8", gridColumn: "1/-1" }}>
            Belum ada layanan yang tersedia.
          </p>
        ) : (
          layanan.map((s, i) => (
            <div className="card" key={s.id} style={{ animationDelay: `${i * 0.1}s` }}>
              <span className="card-icon">
                <DynamicIcon name={s.icon} size={32} />
              </span>
              <h3>{s.nama}</h3>
              <p>{s.deskripsi}</p>
              <div className="card-shine" />
            </div>
          ))
        )}
      </div>
    </section>
  );
}


