# frozen_string_literal: true

if Article.none?
  Article.create!(
    [
      {
        title: "Quantum Networking Hits a Milestone",
        excerpt: "A cross-continental team demonstrates stable quantum links over 1,000 km.",
        body: "Researchers from several labs have unveiled...",
        author: "XField Editorial",
        published_at: Date.today,
        featured: true
      },
      {
        title: "AI Agents Move From Labs to Production",
        excerpt: "Startups are packaging autonomous agents into enterprise workflows.",
        body: "Enterprise adoption is accelerating as ...",
        author: "Morgan Lee",
        published_at: Date.today - 1.day
      }
    ]
  )
end

if Opportunity.none?
  Opportunity.create!(
    [
      {
        opportunity_type: :jobs,
        title: "Staff Backend Engineer",
        full_name: "Lena Ortiz",
        organization: "Nebula Systems",
        description: "Lead the build out of our AI infrastructure platform.",
        link: "https://example.com/jobs/nebula-backend",
        approved: true
      },
      {
        opportunity_type: :research,
        title: "Climate Modeling Fellowship",
        full_name: "Dr. Henry Zhao",
        organization: "Aurora University",
        description: "Seeking collaborators focused on atmospheric data pipelines.",
        link: "https://example.com/research/climate",
        approved: true
      }
    ]
  )
end

if Investor.none?
  Investor.create!(
    [
      {
        name: "Catalyst Ventures",
        values: "Backing founders creating responsible AI and deep-tech platforms.",
        focus: "Pre-seed to Series A across data infrastructure and frontier compute.",
        portfolio_highlights: "Aurora Labs, Meridian Robotics, PulseBio",
        request_for_startups: "Founders building with privacy-preserving machine learning.",
        website: "https://catalyst.vc",
        featured: true
      },
      {
        name: "Northbound Capital",
        values: "Partnering with resilient climate-tech founders.",
        focus: "Hardware and software that accelerate decarbonization.",
        portfolio_highlights: "Aerofoil, TerraGrid",
        request_for_startups: "Scalable solutions for carbon-negative supply chains.",
        website: "https://northbound.capital",
        featured: true
      }
    ]
  )
end
