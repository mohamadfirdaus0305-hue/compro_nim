"use client";

import {
  Brain,
  Cloud,
  Shield,
  Layers,
  BarChart,
  GitMerge,
  Code,
  Cpu,
  Database,
  Globe,
  Lock,
  Monitor,
  Package,
  Server,
  Settings,
  Smartphone,
  Star,
  Zap,
  Bot,
  Network,
  type LucideProps,
} from "lucide-react";
import type { ElementType } from "react";

// Peta nama icon (nilai di kolom `icon` DB) → komponen Lucide
const ICON_MAP: Record<string, ElementType<LucideProps>> = {
  brain: Brain,
  cloud: Cloud,
  shield: Shield,
  layers: Layers,
  "bar-chart": BarChart,
  "git-merge": GitMerge,
  code: Code,
  cpu: Cpu,
  database: Database,
  globe: Globe,
  lock: Lock,
  monitor: Monitor,
  package: Package,
  server: Server,
  settings: Settings,
  smartphone: Smartphone,
  star: Star,
  zap: Zap,
  bot: Bot,
  network: Network,
};

interface DynamicIconProps extends LucideProps {
  name: string;
}

/**
 * Render icon Lucide berdasarkan nama string dari database.
 * Fallback ke icon <Code /> jika nama tidak dikenali.
 */
export default function DynamicIcon({ name, ...props }: DynamicIconProps) {
  const IconComponent = ICON_MAP[name.toLowerCase()] ?? Code;
  return <IconComponent {...props} />;
}
