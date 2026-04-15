---
# An instance of the Experience widget.
# Documentation: https://wowchemy.com/docs/page-builder/
widget: experience

# This file represents a page section.
headless: true

# Order that this section appears on the page.
weight: 65

title: Industry Experience
subtitle:

# Date format for experience
#   Refer to https://wowchemy.com/docs/customization/#date-format
date_format: Jan 2006

# Experiences.
#   Add/remove as many `experience` items below as you like.
#   Required fields are `title`, `company`, and `date_start`.
#   Leave `date_end` empty if it's your current employer.
#   Begin multi-line descriptions with YAML's `|2-` multi-line prefix.
experience:
  - title: AI Engineer Internship
    company: Platfarm
    company_url: 'https://mojitok.com/'
    location: Mapo-gu, Republic of Korea
    date_start: '2018-12-17'
    date_end: '2019-02-15'
    description: |2-
      Platfarm is a startup that builds products that recommend emoji based on chat text. This was my first industry role and where I first learned how an engineering team collaborates day to day.

      Task: Emoji recommendation from chat text
        - Annotated and cleaned a raw chat corpus for training.
        - Built a sentiment-analysis-based emoji recommendation model.
        
  - title: AI Research Internship
    company: NAVER Clova AI
    company_url: 'https://clova.ai/en/research/research-areas.html'
    location: Seongnam, Republic of Korea
    date_start: '2019-12-01'
    date_end: '2020-06-01'
    description: |2-
      NAVER Clova AI is one of Korea's leading AI research organizations. I worked in the LaRva team on Korean language modeling, which is where I built deep practical experience with large-scale training on distributed GPU clusters. In six months I was able to contribute to several tasks at once, thanks to the team's resources and mentorship.

      Task 1: Pretraining large-scale language models (BERT, RoBERTa) in a distributed GPU environment
        - Trained on up to 64 V100 GPUs with large-scale corpora in a distributed setup.
        - Ran hundreds of pre-training experiments and learned how to avoid CPU/GPU bottlenecks, use mixed precision effectively, and manage large training datasets. <br/><br/>

      Task 2: Efficient and lightweight pretrained language models
        - Studied how to apply Lample's Product Key Memory (PKM) to pretrained LMs while avoiding catastrophic drift during Masked-LM pretraining and downstream fine-tuning. The work was accepted to Findings of EMNLP 2020.
        - Applied knowledge distillation to build a lightweight Korean RoBERTa. <br/><br/>

      Task 3: KorQuAD 2.0 leaderboard — 1st place (F1/EM: 83.54 / 66.95, 2020-04-22)
        - KorQuAD 2.0 is a reading-comprehension dataset in the spirit of Google's Natural Questions: the model has to find the correct answer span inside a full Wikipedia page, where the answer can be a table, a list, or a paragraph — much harder than single-paragraph QA.
        ![](experience/korquad.png)
        
  - title: Contract AI Engineer
    company: Brunel AI
    company_url: 'https://brunel.ai/'
    location: Mapo-gu, Republic of Korea
    date_start: '2020-09-14'
    date_end: '2021-06-30'
    description: |2-
      Brunel AI is a startup that builds AI-powered search products for patents. This was a formative experience in thinking about AI from a product perspective — the models I trained shipped into the actual product and came back with real user feedback.

      Task: AI engineering across the stack
        - Helped scope research problems into AI tasks that could be realized as real product features (e.g., deciding which data to collect for long-term value, and framing user problems as concrete ML tasks).
        - Improved search quality by developing a model that recommends relevant patents from a user's input query.
        - Built the supporting infrastructure for the data pipeline and model serving.
  
  - title: AI Research Engineer (Full-time)
    company: Upstage AI
    company_url: 'https://upstage.ai/'
    location: Yongin, Republic of Korea
    date_start: '2021-07-19'
    date_end: '2022-04-30'
    description: |2-
      Upstage AI is a Korean AI company focused on enterprise AI. I joined as a research engineer on the Document AI team during its early phase, working on the foundational models that later became part of Upstage's document-understanding product line.

      Task 1: LayoutLM training and fine-tuning
        - Trained and fine-tuned LayoutLM — a multimodal transformer that jointly models page layout and text — for Korean document understanding.

      Task 2: OCR labeling dataset
        - Built the labeling dataset used to train the document understanding models.

      Task 3: Document parser
        - Built a parser for document processing.

  - title: Founding Engineer, Core Protocol
    company: Clober (Merekat)
    company_url: 'https://clober.io/'
    location: Gangnam-gu, Seoul
    date_start: '2022-04-01'
    date_end: ''
    description: |2-
      Clober is a DeFi protocol company — "Building DeFi primitives that matter" — building an order-book DEX on-chain. The core problem we worked on was bringing a decentralized order-book exchange fully on-chain and shipping it as an optimized, usable product. Over four years of founding-stage work I helped take Clober from zero to one across the full product surface — protocol internals, backend, and frontend.

      Beyond the engineering itself, what four years of founding-stage work at Clober gave me: hands-on zero-to-one product experience (planning, UI/UX, execution, launch); comprehensive domain knowledge in finance; and practical experience in DeFi architecture design and financial modeling. These are the parts I carry forward the most.

      The engineering work I personally did during that period breaks down as follows:

      Task 1 — Clober v1 (2022.04 – 2023.03) — [clober.io](https://clober.io)
        - Built Clober v1 across the full stack (Smart contracts + Backend + Frontend).
        - On the contract side, implemented gas-optimized on-chain order matching using segmented segment trees and octopus heaps.
        - Write-up: [ethresear.ch post](https://ethresear.ch/t/enabling-on-chain-order-matching-for-order-book-dexs-revisited-segmented-segment-trees-and-octopus-heaps-explained/15180) · [recap thread](https://x.com/michael_lwy/status/1942484628025270411) · [gas benchmarks](https://github.com/clober-dex/benchmark/raw/master/result.png) <br/><br/>

      Task 2 — DEX aggregator on Polygon zkEVM (2023.03 – 2023.06)
        - Built a DEX aggregator for Polygon zkEVM in Rust, solo development, to support Clober's growth on the chain. <br/><br/>

      Task 3 — Coupon Finance (2023.06 – 2024.06) — [coupon.finance](https://docs.coupon.finance/)
        - Built the frontend and backend of Coupon Finance, a sister protocol built to drive Clober's growth.
        - Coupon Finance is a fixed-rate DeFi lending protocol that tokenizes interest rates as tradable "coupons" on an on-chain order book — collapsing the deposit–borrow APY spread down to the order book's bid–ask spread, so both lenders and borrowers get tighter rates than on traditional money markets. <br/><br/>

      Task 4 — ETH/USDC vault strategy (2024.06 – Present) — [base.clober.io](https://base.clober.io)
        - Responsible for the development and management of Clober's ETH/USDC vault strategy, end-to-end.
        - Improved market-making strategy using Markov modeling.
        - Built the data pipeline powering strategy backtesting and simulation.
        - Designed a real-time on-chain event tracking pipeline (Ponder-style indexing → Grafana dashboards) for live strategy monitoring and data analysis.
        - Optimized DEX ↔ Clober arbitrage to reduce market-maker losses.
        - Launches: Monad mainnet (2025.11), Base chain vault (2026.01).
        
---
