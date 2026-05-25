import HeroSection from "@/components/HeroSection";
import ServicesSection from "@/components/ServicesSection";
import VisionSection from "@/components/VisionSection";
import BeritaSection from "@/components/BeritaSection";
import ContactSection from "@/components/ContactSection";

// Wajib: halaman ini query DB (ServicesSection) — jangan di-pre-render saat build
export const dynamic = "force-dynamic";

export default function Home() {
  return (
    <>
      <HeroSection />
      <ServicesSection />
      <VisionSection />
      <BeritaSection />
      <ContactSection />
    </>
  );
}
