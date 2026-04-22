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
      [],
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
#let divider-color = rgb("#d5dbe3")
#let entry-count = state("entry-count", 0)

#let section(title) = {
  entry-count.update(0)
  // Wrap in sticky block so the section header never orphans at the bottom of a page
  block(above: 2.4em, sticky: true)[
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
  // Thin divider between entries in the same section (not under the section rule)
  context if entry-count.get() > 0 {
    block(above: 2em, below: 0em, sticky: true, line(length: 100%, stroke: 0.5pt + divider-color))
  }
  entry-count.update(n => n + 1)
  // Header sticks to the first paragraph of body
  block(above: 1.6em, below: 1em, sticky: true)[
    #grid(
      columns: (1fr, auto),
      column-gutter: 0.5em,
      [
        #text(weight: "bold", size: 12pt)[#title] \
        #text(fill: accent, size: 10pt, weight: "semibold")[#subtitle]
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

#let venue(name) = box(
  fill: rgb("#fff1d6"),
  inset: (x: 4pt, y: 2pt),
  outset: (y: 1pt),
  radius: 3pt,
  text(fill: rgb("#b45309"), weight: "bold", size: 9.5pt)[#name],
)

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
  #text(size: 11pt, fill: muted)[AI Engineer · Web3 Engineer]
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
// PUBLICATIONS
// =============================================================
#section("Publications")

#block(above: 0.6em, below: 0.6em)[
  *Large Product Key Memory for Pretrained Language Models* \
  Gyuwan Kim#super[\*], *Tae Hwan Jung*#super[\*] (#super[\*]equal contribution) \
  #venue[Findings of EMNLP 2020] #h(0.5em) · #h(0.5em)
  #link("https://www.aclweb.org/anthology/2020.findings-emnlp.362.pdf")[PDF]
]

#block(above: 1em, below: 1em, line(length: 100%, stroke: 0.5pt + divider-color))

#block(above: 0.6em, below: 0.6em)[
  *CommitBERT: Commit Message Generation Using Pre-Trained Programming Language Model* \
  *Tae Hwan Jung* (sole author) \
  #venue[ACL NLP4Prog Workshop 2021] #h(0.5em) · #h(0.5em)
  #link("https://arxiv.org/pdf/2105.14242.pdf")[PDF] · #link("https://github.com/graykode/commit-autosuggestions")[Code]
]

// =============================================================
// EXPERIENCE
// =============================================================
#section("Experience")

#entry(
  title: [Forward Deployed AI Engineer],
  subtitle: [DSRV],
  location: [Seoul, Republic of Korea],
  date: [Jul 2026 -- Present],
)[
  - Researching x402-based payments for AI agents.
  - Building on Canton and security token offering (STO) platforms.
]

#entry(
  title: [Founding Engineer, Core Protocol],
  subtitle: [Clober (Merekat)],
  location: [Gangnam-gu, Seoul],
  date: [Apr 2022 -- May 2026],
  keep-together: false,
)[
  Built on-chain order-book DEX infrastructure for market makers and trading firms, taking it from zero to one over four years across protocol internals, backend, and frontend alongside co-founders #link("https://www.linkedin.com/in/kevin-hyeon-seok-son-5285a915a/")[Kevin Hyeon Seok Son] and #link("https://www.linkedin.com/in/jihyeok-choy-89bbb7158/")[Jihyeok Choy].

  Beyond the engineering itself, what four years of founding-stage work at Clober gave me: hands-on zero-to-one product experience (planning, UI/UX, execution, launch); comprehensive domain knowledge in finance; and practical experience in DeFi architecture design and financial modeling. These are the lessons I carry forward.

  #block(above: 1.2em, below: 0em, sticky: true)[#text(weight: "bold", fill: accent)[Launched projects:]]

  #task(
    title: [Clober v1 --- full-stack DEX],
    date: [2022.04 -- 2023.03],
    url: "https://clober.io",
    url-label: [clober.io],
  )[
    - Built Clober v1 across the full stack (smart contracts, backend, and frontend).
    - On the contract side, implemented gas-optimized on-chain order matching using segmented segment trees and octopus heaps.
    - Write-up: #link("https://ethresear.ch/t/enabling-on-chain-order-matching-for-order-book-dexs-revisited-segmented-segment-trees-and-octopus-heaps-explained/15180")[ethresear.ch post] · #link("https://x.com/michael_lwy/status/1942484628025270411")[recap thread] · #link("https://github.com/clober-dex/benchmark/raw/master/result.png")[gas benchmarks]
  ]

  #task(
    title: [DEX aggregator on Polygon zkEVM],
    date: [2023.03 -- 2023.06],
  )[
    - Independently built a Rust DEX aggregator for Polygon zkEVM to support Clober's growth on the chain.
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
    date: [2024.06 -- 2026.05],
  )[
    - Developed and managed Clober's ETH/USDC vault strategy end-to-end, scaling TVL to \$500K and closing with a \~6% cumulative return.
    - Improved market making with Markov modeling and optimized DEX ↔ Clober arbitrage to cut market-maker losses.
    - Built backtesting/simulation pipelines and real-time on-chain monitoring (Ponder-style indexing → Grafana).
    - Launched on Monad mainnet (2025.11) and Base (2026.01).
  ]
]

#entry(
  title: [AI Research Engineer],
  subtitle: [Upstage AI],
  location: [Yongin, Republic of Korea],
  date: [Jul 2021 -- Apr 2022],
)[
  Built core Document AI models as *an early team member* (\<40 employees at the time); they later became part of Upstage's enterprise document-understanding product line.

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
  title: [AI Engineer],
  subtitle: [Brunel AI],
  location: [Mapo-gu, Republic of Korea],
  date: [Sep 2020 -- Jun 2021],
)[
  Trained and shipped patent-search models into a production AI search product and iterated on real user feedback. This taught me to think about AI from a product perspective.

  - Helped scope research problems into AI tasks that could become product features (e.g., deciding which data to collect for long-term value, and framing user problems as concrete ML tasks).
  - Improved search quality by developing a model that recommends relevant patents from a user's input query.
  - Built the supporting infrastructure for the data pipeline and model serving.
]

#entry(
  title: [AI Research Engineer (Internship)],
  subtitle: [NAVER Clova AI],
  location: [Seongnam, Republic of Korea],
  date: [Dec 2019 -- Jun 2020],
)[
  Recruited by #link("https://www.linkedin.com/in/jung-woo-ha-b2782862/")[Jung-Woo Ha] to join the LaRva team. Trained Korean language models at scale on distributed GPU clusters and contributed to several research tracks within six months.

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
  title: [AI Engineer (Internship)],
  subtitle: [Platfarm],
  location: [Mapo-gu, Republic of Korea],
  date: [Dec 2018 -- Feb 2019],
)[
  Built an emoji recommendation model from chat text --- my first industry role, where I learned how an engineering team works day to day.

  - Annotated and cleaned a raw chat corpus for training.
  - Built a sentiment-analysis-based emoji recommendation model.
]

// =============================================================
// EXTRACURRICULAR ACTIVITY
// =============================================================
#pagebreak(weak: true)
#section("Extracurricular Activity")

#entry(
  title: [KITRI Best of the Best 5th (Vulnerability Track)],
  subtitle: [Hacking & Security Talent Training Program],
  location: [Seoul, Republic of Korea],
  date: [Jun 2016 -- Dec 2016],
)[
  - Selected for the national security talent program; completed the vulnerability analysis track.
]

#entry(
  title: [Software MAESTRO 10th],
  subtitle: [Software Developer Talent Training Program],
  location: [Seoul, Republic of Korea],
  date: [Mar 2019 -- Nov 2019],
)[
  - Built a federated learning system with on-device TensorFlow training and a Kubernetes-based distributed training pipeline (#link("https://github.com/sortteam/kubeFL")[kubeFL]).
]

// =============================================================
// PROJECTS
// =============================================================
// Keep the whole section on one page
#block(breakable: false)[
  #section("Selected Projects")

  #project-line(
    "nlp-tutorial",
    "Natural language processing tutorial for deep learning researchers",
    "14,882",
    "https://github.com/graykode/nlp-tutorial",
  )
  #project-line(
    "abtop",
    "htop-like real-time monitor for AI coding agents (Claude Code, Codex CLI) in Rust",
    "3,842",
    "https://github.com/graykode/abtop",
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
]
