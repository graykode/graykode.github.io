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
      Platfarm is a startup that develops products that recommend chat text into emoji. As my first industry experience, I was able to learn about the collaboration culture.  
      
      Task : Emoji recommendation in chatting text
        - Data annotation in unrefined chatting corpus
        - Emoji recommendation about sentiment analysis in chatting text.
        
  - title: AI Research Internship
    company: NAVER Clova AI
    company_url: 'https://clova.ai/en/research/research-areas.html'
    location: Seongnam, Republic of Korea
    date_start: '2019-12-01'
    date_end: '2020-06-01'
    description: |2-
      NAVER Clova AI is Korea's leading AI organization. I had studied Korean language modeling in the LaRva team, and through this, I have a know-how about the large-scale modeling in GPU environment.   
      Also, based on good resources and team members, I was able to achieve great results in various tasks in a short period of time(only 6 months).   
       
      Task 1: Pretraining large scale Lanuage Model such as BERT, RoBERTa on distributed GPU environment.
        - I have dealt with up to 64 V100 GPUs and large amounts of training data in a distributed environment.  
        - I have gone through hundreds of pre-training processes and have experienced how to avoid CPU, GPU bottlenecks, how to use half precision, and how to manage large amounts of data. <br/><br/> 

      Task 2: Efficient modeling and lightweight model in pretrained language model
        - We studied how to use Lample's Product Key Memory(PKM) efficiently, avoiding catastrophic drift in Masked-LM and fine-tuning tasks, and this study was accepted findings of EMNLP 2020.  
        - I have know-how about knowledge distillation to lightweight the Korean RoBERTa model  <br/><br/>
      
      Task 3: KorQuAD2.0 leaderBoard 1th(F1/EM:83.54/66.95) in 04/22/2020
        - KorQuAD 2.0 is a dataset similar to Google's Natural Question, which is a very difficult problem to find the correct answer on one page of Wikipedia. The answer can be a table, list, or paragraph.
        ![](experience/korquad.png)
        
  - title: Contract AI Engineer
    company: Brunel AI
    company_url: 'https://brunel.ai/'
    location: Mapo-gu, Republic of Korea
    date_start: '2020-09-14'
    date_end: ''
    description: |2-
      Brunel AI is a startup that provides ai search products to help people search for patents. It was a good experience to think about AI from a product perspective as the developed model was applied to the actual product and received feedback.   
      
      Task : Organization of AI Engineering
        - Help transformation into AI tasks that can be realized as real products(For example, which data to collect will be meaningful in the long term or what AI task to solve the problem with)
        - Improve search quality : Developing a model that recommends a patent based on the user's input query
        - Building infrastructure for data pipeline and model serving
---
