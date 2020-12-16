---
title: "Large Product Key Memory for Pretrained Language Models"

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here 
# and it will be replaced with their full name and linked to their profile.
authors:
- Gyuwan Kim
- admin

# Author notes (optional)
author_notes:
- "Equal contribution"
- "Equal contribution"

date: "2020-10-05T00:00:00Z"
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate: "2020-10-05T00:00:00Z"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["1"]

# Publication name and optional abbreviated publication name.
publication: Findings of [EMNLP 2020](https://2020.emnlp.org/)
publication_short:

abstract: Product key memory (PKM) proposed by Lample et al. (2019) enables to improve prediction accuracy by increasing model capacity efficiently with insignificant computational overhead. However, their empirical application is only limited to causal language modeling. Motivated by the recent success of pretrained language models (PLMs), we investigate how to incorporate large PKM into PLMs that can be finetuned for a wide variety of downstream NLP tasks. We define a new memory usage metric, and careful observation using this metric reveals that most memory slots remain outdated during the training of PKM-augmented models. To train better PLMs by tackling this issue, we propose simple but effective solutions&#58; (1) initialization from the model weights pretrained without memory and (2) augmenting PKM by addition rather than replacing a feed-forward network. We verify that both of them are crucial for the pretraining of PKM-augmented PLMs, enhancing memory utilization and downstream performance. Code and pretrained weights are available at [https&#58;//github.com/clovaai/pkm-transformers](https://github.com/clovaai/pkm-transformers).

# Summary. An optional shortened abstract.
summary: Improving accuracy and speed trade-off when finetuning pretrained language models by using large product key memory and mitigating a catastrophic drift with initialization and residual memory. *(I was a research internship at Clova AI while doing this work.)* - [Findings of EMNLP 2020](https://2020.emnlp.org/)

tags: []

# Display this page in the Featured widget?
featured: true

# Custom links (uncomment lines below)
# links:
# - name: Custom Link
#   url: http://example.org

url_pdf: ''
url_code: ''
url_dataset: ''
url_poster: ''
url_project: ''
url_slides: ''
url_source: ''
url_video: ''

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: ""
  placement: 1
  focal_point: "Left"
  preview_only: false

links:
- name: PDF
  url: https://www.aclweb.org/anthology/2020.findings-emnlp.362.pdf
- name: BibTex
  url: https://www.aclweb.org/anthology/2020.findings-emnlp.362.bib

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
# projects:
# - example

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: example
---
