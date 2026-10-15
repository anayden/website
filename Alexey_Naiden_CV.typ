// Alexey Naiden — CV
// Compile: typst compile Alexey_Naiden_CV.typ

#let accent = rgb("#264a8a")

#set document(title: "Alexey Naiden — CV", author: "Alexey Naiden")
#set page(
  paper: "us-letter",
  margin: (x: 0.85in, top: 0.85in, bottom: 0.85in),
)
#set text(font: "New Computer Modern", size: 10pt, lang: "en")
#set par(justify: true, leading: 0.55em)
#set list(tight: true, spacing: 0.5em, indent: 4pt, body-indent: 5pt)

#show link: it => underline(text(fill: accent, it))

// Section header: small-caps accent title with a rule under it
// sticky: true keeps the header glued to the entry that follows it,
// so a section title never orphans alone at the bottom of a page.
#let section(title) = {
  block(sticky: true, above: 16pt, below: 10pt)[
    #text(fill: accent, weight: "bold", size: 11.5pt, smallcaps(title))
    #v(-5pt)
    #line(length: 100%, stroke: 0.6pt + accent)
  ]
}

// One experience entry: bold title (left) + date (right), org subtitle, then body.
// Wrapped in a non-breakable block so the whole entry stays on one page —
// if it doesn't fit, it floats to the next page intact instead of splitting.
#let entry(title, date, org: none, body) = {
  block(breakable: false, below: 8pt)[
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      text(weight: "bold", title), text(date),
    )
    #if org != none {
      v(-4pt)
      org
      v(-1pt)
    }
    #body
  ]
}

// ── Header ────────────────────────────────────────────────
#text(size: 22pt, fill: accent, weight: "bold")[Alexey Naiden]

#v(-4pt)
#par(justify: false)[
  #text(size: 9.5pt)[
    #box[+995 (551) 00-17-58]
    #h(4pt) | #h(4pt) #box(link("mailto:alexey.nayden@gmail.com")[alexey.nayden\@gmail.com])
    #h(4pt) | #h(4pt) #box(link("https://github.com/anayden")[github.com/anayden])
    #h(4pt) | #h(4pt) #box(link("https://www.linkedin.com/in/alexeynaiden")[www.linkedin.com/in/alexeynaiden])
  ]
]

// ── Work Experience ───────────────────────────────────────
#section("Work Experience")

#entry("Senior Backend Engineer", "May 2026 — Present", org: "Zerion")[
  - Develop Go microservices that parse blockchains and serve portfolio and asset data through a REST API to major wallets and exchanges.
  - Focus on DeFi infrastructure: transaction receipt parsing, cross-chain bridge swap detection, and protocol coverage.
  - Improve performance and reliability of the data pipeline, with a focus on Solana.
]

#entry("Staff Engineer", "May 2025 — May 2026", org: "Cloud Linux Software")[
  - Coordinate cross-team technical projects involving 8 engineering teams, including creating architectures and facilitating protocol and API agreements.
  - Ensure the department scales horizontally (by adding new teams to existing stacks) and vertically (by increasing team throughput via automations).
  - Continuously improve processes from planning and retrospectives to CI/CD build times.
  - Interviewed and bootstrapped a new Python team in the department.
]

#entry("Lead Software Engineer", "Oct 2023 — May 2025", org: "Flo Health")[
  - Led cross-team implementation and adoption of a product and price catalog: a multi-component system that imports detailed subscription and price info from App Store and Google Play, letting product managers set up flexible promo campaigns. Migrated off legacy hardcoded product info across multiple services.
  - Architected and developed feature management infrastructure and UI to support multi-tiered subscriptions. Coordinated the migration.
  - Improved build pipeline performance and deployment scripts for services in the Subscription Engine domain, cutting build and deploy times by 3-4x in most cases.
]

#entry("Senior Software Engineer", "Apr 2023 — Sep 2023", org: "MoneyHash")[
  - Owned integration of MoneyHash payment platform with National Bank of Jordan's payment system, including technical communications, implementation, testing, and deployment.
]

#entry("Team Lead", "Aug 2022 — Apr 2023", org: "Loona")[
  - Led the team in planning and architecture decisions for software development.
  - Handled hiring, interviewing, and onboarding new team members to ensure a good fit.
]

#entry("MLOps Engineer", "Jul 2020 — Aug 2022", org: "Neu.ro")[
  - Built and maintained infrastructure for data storage, processing, model training, and deployment.
  - Developed and implemented processes to monitor and maintain model performance and accuracy.
  - Automated deployment, scaling, and monitoring of machine learning models.
  - Collaborated with data scientists and engineers to optimize models and the ML system.
  - Communicated with stakeholders to understand requirements and ensure ML systems met their needs.
]

#entry("Senior Software Engineer", "Apr 2019 — Jul 2020", org: "Neu.ro")[
  - Worked on microservices using the asyncio library.
  - Contributed to a platform that controlled Kubernetes clusters on Azure, AWS, and GCP.
  - Enabled users to run machine learning workloads, store datasets, manage data, and run auxiliary apps.
  - Wrote code, designed system architecture, improved codebase and tests, and added new features.
]

#entry("Senior Software Engineer (Platform Security team)", "Apr 2017 — Sep 2018", org: "Apple Inc.")[
  - Designed and implemented security solutions for macOS and iOS kernels using Objective-C, C++, and C.
  - Managed application sandbox, privilege separation, and mandatory access control.
  - Collaborated with cross-functional teams to design and implement security features for internal and external needs.
  - Continuously monitored and improved platform security.
]

#entry("Senior Software Engineer (Cloud Messaging)", "Apr 2017 — Sep 2018", org: "Apple Inc.")[
  - Worked on Apple's Cloud Messaging team, responsible for iMessage, FaceTime, and other cloud communication services.
  - Designed and implemented high-performance messaging systems for iMessage, FaceTime, and push notifications (handling 200k+ messages per second at peak).
  - Provided technical leadership, educated coworkers, and improved development processes.
  - Reviewed and optimized the messaging systems' codebase for better performance.
]

#entry("Software Development Engineer II", "Oct 2013 — Sep 2014", org: "Amazon Inc.")[
  - Developed and supported a platform and apps that processed and surfaced raw advertising data at scale on the Display Ads Analytics team.
  - Managed Hadoop clusters (thousands of nodes), Oracle databases, and AWS services like Redshift, S3, RDS, SNS, and SQS.
  - Worked on Java and Python apps, including GWT web apps, RPC/SOAP/REST web services, and Django websites.
]

#entry("Multiple positions: Developer, Sr. Developer, Team Lead", "Oct 2005 — Sep 2013",
  org: "Multiple Companies: DataArt, Exigen Services, ArtQ, MintMind Interactive, Evil Martians")[
  - Omitting details of several early employers for brevity. Any details are available upon request if needed.
]

// ── Education ─────────────────────────────────────────────
#section("Education")

#let edu(school, place, field, dates) = {
  block(breakable: false, below: 9pt)[
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      row-gutter: 5pt,
      text(weight: "bold", school), place,
      text(style: "italic", field), text(style: "italic", dates),
    )
  ]
}

#edu("St.Petersburg State University", "St.Petersburg, Russia",
  "MSc, Computer Science and Mathematics", "Sep 2003 — Jun 2011")
#edu("Stanford Center for Professional Development", "Stanford, CA",
  "Cybersecurity", "Sep 2015 — Aug 2017")

// ── Extracurricular Activities ────────────────────────────
#section("Extracurricular Activities")

#block(breakable: false)[
  #text(weight: "bold")[Patents]
  - Co-authored patents: Region-Specific Configuration (US20170359216A1) and Relayed Communication Channel Establishment (US15179241).
]

// ── Skills ────────────────────────────────────────────────
#section("Skills")

- *Programming Languages*: Go, Python, JavaScript/TypeScript, HTML/CSS, Java, Bash
- *Technologies*: Blockchain data (Solana), REST APIs, asyncio, PostgreSQL, AWS/GCP/Azure, LLM, UNIX, Docker/Kubernetes
