---
title: "CommitBERT: Commit Message Generation Using Pre-Trained Programming Language Model"

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here 
# and it will be replaced with their full name and linked to their profile.
authors:
- admin

# Author notes (optional)

date: "2021-05-29T00:00:00Z"
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate: "2021-05-29T00:00:00Z"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["1"]

# Publication name and optional abbreviated publication name.
publication: ACL [NLP4Prog Workshop 2021](https://nlp4prog.github.io/2021/)
publication_short:

abstract: Commit message is a document that summarizes source code changes in natural language. A good commit message clearly shows the source code changes, so this enhances collaboration between developers. Therefore, our work is to develop a model that automatically writes the commit message. To this end, we release 345K datasets consisting of code modification and commit messages in six programming languages (Python, PHP, Go, Java, JavaScript, and Ruby). Similar to the neural machine translation (NMT) model, using our dataset, we feed the code modification to the encoder input and the commit message to the decoder input and measure the result of the generated commit message with BLEU-4. Also, we propose the following two training methods to improve the result of generating the commit message&#58; (1) A method of preprocessing the input to feed the code modification to the encoder input. (2) A method that uses an initial weight suitable for the code domain to reduce the gap in contextual representation between programming language (PL) and natural language (NL). Training code, dataset, and pre-trained weights are available at [https&#58;//github.com/graykode/commit-autosuggestions](https://github.com/graykode/commit-autosuggestions).

# Summary. An optional shortened abstract.
summary: Introduces the model and data that generate a commit message when code diff is given using the pre-trained programming language model about six programming languages (Python, PHP, Go, Java, JavaScript, and Ruby). - [ACL NLP4Prog Workshop 2021](https://nlp4prog.github.io/2021/)

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
  url: https://arxiv.org/pdf/2105.14242.pdf

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
