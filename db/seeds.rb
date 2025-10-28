# frozen_string_literal: true

puts "Seeding demo data for XField..."

Opportunity.destroy_all
Article.destroy_all
Investor.destroy_all
Subscription.destroy_all

opportunity_data = [
  {
    category: "Jobs",
    title: "Founding AI Engineer at Lattice Labs",
    full_name: "Morgan Lee",
    organization: "Lattice Labs",
    description: "We're building workflow copilots for R&D teams and need an engineer fluent in GenAI tooling.",
    link: "https://example.com/jobs/lattice-ai-engineer",
    status: :approved
  },
  {
    category: "Research",
    title: "University of Helios quantum sensing fellowship",
    full_name: "Prof. Ana Martins",
    organization: "University of Helios",
    description: "Join our quantum sensing lab for a 12-month applied fellowship with industry partners.",
    link: "https://example.com/research/helios-fellowship",
    status: :approved
  },
  {
    category: "Open Source",
    title: "Maintainer search: EdgeVision SDK",
    full_name: "Priya Raman",
    organization: "EdgeVision",
    description: "We're open-sourcing our computer vision inference SDK and looking for co-maintainers.",
    link: "https://example.com/open-source/edgevision",
    status: :approved
  },
  {
    category: "Co-Founder",
    title: "Co-founder for climate fintech startup",
    full_name: "Jonas Patel",
    organization: "CarbonFlow",
    description: "Seeking a technical co-founder to help build the infrastructure for voluntary carbon markets.",
    link: "https://example.com/cofounder/carbonflow",
    status: :approved
  }
]

opportunity_data.each { |attrs| Opportunity.create!(attrs) }

Article.create!(
  title: "The next wave of developer tools is workflow-native",
  author: "XField Research",
  body: "We interviewed 30 teams building workflow-native tooling...",
  excerpt: "How operators are rethinking the developer stack.",
  status: :published,
  published_at: 2.days.ago
)

Article.create!(
  title: "Inside Europe's battery mega-factories",
  author: "XField Editorial",
  body: "A tour of the manufacturing lines powering the energy transition...",
  excerpt: "Why gigafactories are clustering in the Nordics.",
  status: :published,
  published_at: 5.days.ago
)

Investor.create!(
  firm_name: "Aurora Ventures",
  contact_name: "Jamie Chen",
  email: "jamie@auroravc.co",
  website: "https://auroravc.co",
  values: "Backing mission-driven founders building deeptech infrastructure.",
  investment_focus: "Pre-seed to Series A in climate, robotics, and ML ops.",
  portfolio_highlights: "Flux Robotics, TerraStack",
  request_for_startups: "Industrial automation, geothermal, climate risk data"
)

Subscription.create!(email: "founders@xfield.co")

puts "Seed data loaded."
