// Tae Hwan Jung — Curriculum Vitae

#let accent = rgb("#2962ff")
#let muted = rgb("#6c757d")
#let text-color = rgb("#1a1a1a")

#set document(title: "Tae Hwan Jung - CV", author: "Tae Hwan Jung")
#set page(
  paper: "a4",
  margin: (x: 1.4cm, y: 1.2cm),
  footer: context [
    #set text(size: 8pt, fill: muted)
    #grid(
      columns: (1fr, 1fr, 1fr),
      align(left)[Tae Hwan Jung],
      align(center)[Curriculum Vitae],
      align(right)[#counter(page).display("1 / 1", both: true)],
    )
  ],
)
#set text(
  font: ("Charter", "Apple SD Gothic Neo"),
  size: 10pt,
  fill: text-color,
)
// Tighter line-height within paragraphs, bigger gap between paragraphs
#set par(justify: true, leading: 0.55em, spacing: 1.3em)
#set list(indent: 0.6em, body-indent: 0.4em, spacing: 0.55em, marker: text(fill: accent)[•])

// Clickable-looking links
#show link: it => text(fill: accent, underline(offset: 2pt, stroke: 0.4pt + accent)[#it])

// --- Helpers ---
#let section(title) = {
  // Wrap in sticky block so the section header never orphans at the bottom of a page
  block(above: 1.1em, sticky: true)[
    #text(size: 12pt, weight: "bold", fill: accent, upper(title))
    #v(-0.2em)
    #line(length: 100%, stroke: 0.6pt + accent)
    #v(0.4em)
  ]
}

#let entry(
  title: "",
  subtitle: "",
  location: "",
  date: "",
  keep-together: true,
  body,
) = {
  // Bigger gap between companies, header sticks to the first paragraph of body
  block(above: 2em, below: 1em, sticky: true)[
    #grid(
      columns: (1fr, auto),
      column-gutter: 0.5em,
      [
        #text(weight: "bold", size: 11pt)[#title] \
        #text(fill: muted, size: 9.5pt, style: "italic")[#subtitle]
      ],
      align(right)[
        #text(weight: "bold", size: 10pt)[#date] \
        #text(fill: muted, size: 9pt, style: "italic")[#location]
      ],
    )
  ]
  block(breakable: not keep-together)[#body]
}

#let task(title: "", date: "", url: none, url-label: none, body) = {
  // Task header + its bullets stay together, tight gap between title and bullets
  block(above: 0.9em, below: 0.3em, breakable: false)[
    #grid(
      columns: (1fr, auto),
      column-gutter: 0.8em,
      text(weight: "bold", size: 10pt, fill: rgb("#2a2a2a"))[#title],
      align(right)[
        #text(fill: muted, size: 9pt)[#date]
        #if url != none [
          #h(0.4em) #sym.bar.v #h(0.4em)
          #text(size: 9pt)[#link(url)[#url-label]]
        ]
      ],
    )
    #v(-0.4em)
    #body
  ]
}

#let project-line(name, summary, stars, url) = {
  block(above: 0.4em, below: 0.4em)[
    #grid(
      columns: (1fr, auto),
      column-gutter: 0.5em,
      [
        #text(weight: "bold")[#link(url)[#name]] #h(0.4em)
        #text(fill: muted)[— #summary]
      ],
      align(right)[#text(size: 9pt, fill: muted)[#sym.star #stars]],
    )
  ]
}

// =============================================================
// HEADER
// =============================================================
#align(center)[
  #text(size: 26pt, weight: "bold", fill: text-color)[Tae Hwan Jung]
  #v(-0.4em)
  #text(size: 11pt, fill: muted)[AI Engineer · Founding Engineer \@ Clober]
  #v(-0.2em)
  #text(size: 9pt)[
    #link("mailto:nlkey2022@gmail.com")[nlkey2022\@gmail.com] #h(0.6em) #sym.bar.v #h(0.6em)
    #link("https://github.com/graykode")[github.com/graykode] #h(0.6em) #sym.bar.v #h(0.6em)
    #link("https://scholar.google.co.uk/citations?user=sP-CozUAAAAJ")[Google Scholar] #h(0.6em) #sym.bar.v #h(0.6em)
    #link("https://graykode.github.io")[graykode.github.io]
  ]
]

// =============================================================
// SUMMARY
// =============================================================
#section("Summary")

*어떤 도메인이든 빠른 learning curve로 그 분야의 탑 티어가 될 수 있습니다.*

"AI knows everything" 시대에 단순히 "정보를 많이 아는 것"은 더 이상 중요하지 않다고 생각합니다. 특히 연구 조직이 아닌, 프로덕트가 더 중요한 스타트업에서 풀어야 하는 문제는 대부분 본인에게 익숙한 도메인에서 시작되지 않습니다. 따라서 저는 본인이 잘하는 문제를 푸는 것보다, *시장에서 꼭 풀어야 하는 문제를 능동적으로 찾아 푸는 방향성*이 앞으로의 엔지니어에게 필요하다고 생각합니다. 이는 문제에 접근하는 방식, 유지보수를 고려한 아키텍처 설계, 그리고 프로덕트를 매니징하는 전 과정을 아우르는 역량입니다.

저는 AI 엔지니어로 커리어를 시작했습니다. 이후 블록체인 필드에서 풀고 싶은 문제를 발견했고, AI에서 했던 것과는 전혀 다른 분야를 zero base부터 시작했습니다. 4년 동안 #link("https://www.linkedin.com/company/merekat-pte-ltd/about/")[훌륭한 팀원들]과 함께 3--4개월 주기로 프로덕트를 출시하며 6--7번의 프로덕트 사이클을 경험했습니다. 이 과정에서 엔지니어로서는 방향성은 맞지만 아직 #link("https://ethresear.ch/t/enabling-on-chain-order-matching-for-order-book-dexs-revisited-segmented-segment-trees-and-octopus-heaps-explained/15180")[개척되지 않은 문제들을 깊이 고민]했고, 만든 프로덕트를 시장에서 성공시키기 위한 다양한 시도를 팀원들과 함께 해보았습니다.

창업을 경험하기 이전과 이후의 저는 비교할 수 없을 만큼 달라졌습니다. 엔지니어로서의 주체성뿐 아니라, 문제를 풀어가는 과정에서의 복잡한 인간관계와 낙오의 경험을 통해 훨씬 깊게 성장할 수 있었습니다. 이 과정에서 가장 깊이 배운 덕목은 *윤리성과 책임감*입니다.

제가 풀고자 하는 문제가 있는 곳이라면, 다음 커리어의 도메인은 상관없습니다. 하지만 엔지니어로서는 어떤 분야에서든 AI조차 풀지 못하는 어려운 문제를 프로덕트 관점에서 풀어나가고 싶고, 팀원으로서는 팀에 큰 위기가 닥쳤을 때 책임감 있게 그 무게를 질 수 있는 사람이 되고 싶습니다.

// =============================================================
// SKILLS
// =============================================================
#section("Skills")

*AI Skills*
- LLM Distributed Pre-training
- Knowledge Distillation & Compression
- Programming NLP
- Document AI (LayoutLM, OCR)
- PyTorch / Python

*Blockchain Skills*
- Financial Modeling & DeFi Protocol Design
- Solidity Development & Gas Optimization
- Web3 Full-stack (FE / BE)
- On-chain Data Indexing Pipeline
- Data-driven Market Making & Arbitrage
- TypeScript (main) / Rust

// =============================================================
// EDUCATION
// =============================================================
#section("Education")

#entry(
  title: [B.S. in Computer Engineering],
  subtitle: [Kyung Hee University (incl. two years of military service)],
  location: [Republic of Korea],
  date: [2015 -- 2022],
)[]

// =============================================================
// EXPERIENCE
// =============================================================
#section("Experience")

#entry(
  title: [Founding Engineer, Core Protocol],
  subtitle: [Clober (Merekat)],
  location: [Gangnam-gu, Seoul],
  date: [Apr 2022 -- Present],
  keep-together: false,
)[
  Clober is a DeFi protocol company --- "Building DeFi primitives that matter" --- building an order-book DEX on-chain. The core problem we worked on was bringing a decentralized order-book exchange fully on-chain and shipping it as an optimized, usable product. Over four years of founding-stage work I helped take Clober from zero to one across the full product surface --- protocol internals, backend, and frontend.

  Beyond the engineering itself, what four years of founding-stage work at Clober gave me: hands-on zero-to-one product experience (planning, UI/UX, execution, launch); comprehensive domain knowledge in finance; and practical experience in DeFi architecture design and financial modeling. These are the parts I carry forward the most.

  #task(
    title: [Clober v1 --- full-stack DEX],
    date: [2022.04 -- 2023.03],
    url: "https://clober.io",
    url-label: [clober.io],
  )[
    - Built Clober v1 across the full stack (Smart contracts + Backend + Frontend).
    - On the contract side, implemented gas-optimized on-chain order matching using segmented segment trees and octopus heaps.
    - Write-up: #link("https://ethresear.ch/t/enabling-on-chain-order-matching-for-order-book-dexs-revisited-segmented-segment-trees-and-octopus-heaps-explained/15180")[ethresear.ch post] · #link("https://x.com/michael_lwy/status/1942484628025270411")[recap thread] · #link("https://github.com/clober-dex/benchmark/raw/master/result.png")[gas benchmarks]
  ]

  #task(
    title: [DEX aggregator on Polygon zkEVM],
    date: [2023.03 -- 2023.06],
  )[
    - Built a DEX aggregator for Polygon zkEVM in Rust, solo development, to support Clober's growth on the chain.
  ]

  #task(
    title: [Coupon Finance --- fixed-rate DeFi lending],
    date: [2023.06 -- 2024.06],
    url: "https://docs.coupon.finance/",
    url-label: [coupon.finance],
  )[
    - Built the frontend and backend of Coupon Finance, a sister protocol built to drive Clober's growth.
    - Coupon Finance is a fixed-rate DeFi lending protocol that tokenizes interest rates as tradable "coupons" on an on-chain order book --- collapsing the deposit--borrow APY spread down to the order book's bid--ask spread, so both lenders and borrowers get tighter rates than on traditional money markets.
  ]

  #task(
    title: [ETH/USDC vault strategy],
    date: [2024.06 -- Present],
    url: "https://base.clober.io",
    url-label: [base.clober.io],
  )[
    - Responsible for the development and management of Clober's ETH/USDC vault strategy, end-to-end.
    - Improved market-making strategy using Markov modeling.
    - Built the data pipeline powering strategy backtesting and simulation.
    - Designed a real-time on-chain event tracking pipeline (Ponder-style indexing → Grafana dashboards) for live strategy monitoring and data analysis.
    - Optimized DEX ↔ Clober arbitrage to reduce market-maker losses.
    - Launches: Monad mainnet (2025.11), Base chain vault (2026.01).
  ]
]

#entry(
  title: [AI Research Engineer (Full-time)],
  subtitle: [Upstage AI],
  location: [Yongin, Republic of Korea],
  date: [Jul 2021 -- Apr 2022],
)[
  Upstage AI is a Korean AI company focused on enterprise AI. I joined as a research engineer on the Document AI team during its early phase, working on the foundational models that later became part of Upstage's document-understanding product line.

  #task(title: [LayoutLM training and fine-tuning])[
    - Trained and fine-tuned LayoutLM --- a multimodal transformer that jointly models page layout and text --- for Korean document understanding.
  ]

  #task(title: [OCR labeling dataset])[
    - Built the labeling dataset used to train the document understanding models.
  ]

  #task(title: [Document parser])[
    - Built a parser for document processing.
  ]
]

#entry(
  title: [AI Engineer (Contract)],
  subtitle: [Brunel AI],
  location: [Mapo-gu, Republic of Korea],
  date: [Sep 2020 -- Jun 2021],
)[
  Brunel AI is a startup that builds AI-powered search products for patents. This was a formative experience in thinking about AI from a product perspective --- the models I trained shipped into the actual product and came back with real user feedback.

  - Helped scope research problems into AI tasks that could be realized as real product features (e.g., deciding which data to collect for long-term value, and framing user problems as concrete ML tasks).
  - Improved search quality by developing a model that recommends relevant patents from a user's input query.
  - Built the supporting infrastructure for the data pipeline and model serving.
]

#entry(
  title: [AI Research Internship],
  subtitle: [NAVER Clova AI],
  location: [Seongnam, Republic of Korea],
  date: [Dec 2019 -- Jun 2020],
)[
  NAVER Clova AI is one of Korea's leading AI research organizations. I worked in the LaRva team on Korean language modeling, which is where I built deep practical experience with large-scale training on distributed GPU clusters. In six months I was able to contribute to several tasks at once, thanks to the team's resources and mentorship.

  #task(title: [Pretraining BERT / RoBERTa on distributed GPU cluster])[
    - Trained on up to 64 V100 GPUs with large-scale corpora in a distributed setup.
    - Ran hundreds of pre-training experiments and learned how to avoid CPU/GPU bottlenecks, use mixed precision effectively, and manage large training datasets.
  ]

  #task(title: [Efficient and lightweight pretrained language models])[
    - Studied how to apply Lample's Product Key Memory (PKM) to pretrained LMs while avoiding catastrophic drift during Masked-LM pretraining and downstream fine-tuning. The work was accepted to Findings of EMNLP 2020.
    - Applied knowledge distillation to build a lightweight Korean RoBERTa.
  ]

  #task(title: [KorQuAD 2.0 leaderboard --- 1st place (F1/EM 83.54 / 66.95)])[
    - KorQuAD 2.0 is a reading-comprehension dataset in the spirit of Google's Natural Questions: the model has to find the correct answer span inside a full Wikipedia page, where the answer can be a table, a list, or a paragraph --- much harder than single-paragraph QA.
  ]
]

#entry(
  title: [AI Engineer Internship],
  subtitle: [Platfarm],
  location: [Mapo-gu, Republic of Korea],
  date: [Dec 2018 -- Feb 2019],
)[
  Platfarm is a startup that builds products that recommend emoji based on chat text. This was my first industry role and where I first learned how an engineering team collaborates day to day.

  - Annotated and cleaned a raw chat corpus for training.
  - Built a sentiment-analysis-based emoji recommendation model.
]

// =============================================================
// PUBLICATIONS
// =============================================================
#section("Publications")

#block(above: 0.6em, below: 0.6em)[
  *Large Product Key Memory for Pretrained Language Models* \
  Gyuwan Kim#super[\*], *Tae Hwan Jung*#super[\*] (#super[\*]equal contribution) \
  #text(fill: muted, style: "italic")[Findings of EMNLP 2020] #h(0.5em) · #h(0.5em)
  #link("https://www.aclweb.org/anthology/2020.findings-emnlp.362.pdf")[PDF] · #link("https://github.com/clovaai/pkm-transformers")[Code]
]

#block(above: 0.6em, below: 0.6em)[
  *CommitBERT: Commit Message Generation Using Pre-Trained Programming Language Model* \
  *Tae Hwan Jung* \
  #text(fill: muted, style: "italic")[ACL NLP4Prog Workshop 2021] #h(0.5em) · #h(0.5em)
  #link("https://arxiv.org/pdf/2105.14242.pdf")[PDF] · #link("https://github.com/graykode/commit-autosuggestions")[Code]
]

// =============================================================
// PROJECTS
// =============================================================
#section("Selected Projects")

#project-line(
  "nlp-tutorial",
  "Natural Language Processing Tutorial for Deep Learning Researchers",
  "14,882",
  "https://github.com/graykode/nlp-tutorial",
)
#project-line(
  "nlp-roadmap",
  "Mind map and keyword roadmap for NLP learners",
  "3,264",
  "https://github.com/graykode/nlp-roadmap",
)
#project-line(
  "distribution-is-all-you-need",
  "Tutorial on basic probability distributions in deep learning",
  "1,635",
  "https://github.com/graykode/distribution-is-all-you-need",
)
#project-line(
  "gpt-2-Pytorch",
  "Minimal PyTorch implementation of OpenAI's GPT-2",
  "1,013",
  "https://github.com/graykode/gpt-2-Pytorch",
)
#project-line(
  "xlnet-Pytorch",
  "Simple XLNet implementation with a PyTorch wrapper",
  "581",
  "https://github.com/graykode/xlnet-Pytorch",
)
#project-line(
  "commit-autosuggestions",
  "AI that automatically recommends commit messages (CommitBERT)",
  "389",
  "https://github.com/graykode/commit-autosuggestions",
)
#project-line(
  "ai-docstring",
  "VS Code extension — automatic Python docstring generation via NLP",
  "313",
  "https://github.com/graykode/ai-docstring",
)
#project-line(
  "matorage",
  "Object storage manager for tensors (PyTorch, TensorFlow, Keras)",
  "73",
  "https://github.com/graykode/matorage",
)
#project-line(
  "clober-dex/core",
  "On-chain central limit order book engine (Solidity)",
  "11",
  "https://github.com/clober-dex/core",
)
#project-line(
  "clober-dex/v2-sdk",
  "TypeScript SDK for Clober DEX v2",
  "9",
  "https://github.com/clober-dex/v2-sdk",
)
