---
layout: barron
title: About
permalink: /
---

<!-- Bio Section -->
<table class="section-table section-table--spaced">
  <tbody>
    <tr>
      <td class="section-cell">
        <p>I am a PhD candidate in computer science at <a href="https://www.purdue.edu/">Purdue University</a>, advised by Prof. <a href="https://www.cs.purdue.edu/homes/ninghui">Ninghui Li</a>.</p>
        <p>I study <b>security and privacy risks</b> in machine learning and LLM agents, from both adversarial and defensive perspectives. My current research focuses on three directions:</p>

        <div class="research-pillars">
          <div class="pillar pillar--discovery">
            <div class="pillar-title">🚨 AI Security & Safety</div>
            <div class="pillar-sub">Uncovering threats from LLM misuse</div>
            <div class="pillar-detail">such as <a href="https://arxiv.org/abs/2505.12402">automated profile inference</a>, and building security principles for LLM agents.</div>
          </div>
          <div class="pillar pillar--mitigation">
            <div class="pillar-title">🔍 Machine Learning Privacy</div>
            <div class="pillar-sub">Assessing information leakage in ML models</div>
            <div class="pillar-detail">developing principled membership inference strategies, such as <a href="https://arxiv.org/abs/2507.21412">cascading training</a> and <a href="https://arxiv.org/abs/2509.06796">imitative training</a>, and auditing privacy risks of LLMs via <a href="https://arxiv.org/abs/2510.05699">tokenizers</a> and <a href="https://arxiv.org/abs/2601.02751">fine-tuning</a>.</div>
          </div>
          <div class="pillar pillar--threat">
            <div class="pillar-title">🛡️ Data Privacy</div>
            <div class="pillar-sub">Identifying and protecting data privacy</div>
            <div class="pillar-detail">in critical applications like sensitive <a href="https://arxiv.org/abs/2402.06806">tabular data</a> and <a href="https://arxiv.org/abs/2609.07623">location data</a>.</div>
          </div>
        </div>

        <p>My research has been recognized and supported by the <a href="https://www.purdue.edu/gradschool/fellowship/funding-resources-for-students/fellowships/managed-fellowships/recruitment-fellowships.html">Ross Fellowship</a> (2023&ndash;2027), <a href="https://www.purdue.edu/newsroom/purduetoday/releases/2023/Q2/purdue-invests-in-graduate-student-stipends,-raising-minima-and-launching-presidential-doctoral-excellence-awards.html">Presidential Doctoral Excellence Award</a> (2023&ndash;2027), and <a href="https://www.bobherbold.com/">Herbold Scholarship</a> (2023&ndash;2024).</p>
      </td>
    </tr>
  </tbody>
</table>

<!-- News Section -->
<table class="section-table">
  <tbody>
    <tr>
      <td class="section-cell">
        <h2>News</h2>
        {% assign news = site.news | sort: 'date' | reverse %}
        {% assign news_size = news | size %}
        <ul class="list-compact">
          {% for item in news limit: 5 %}
          <li>{{ item.date | date: "[%Y.%m]" }} {% if item.inline %}{{ item.content | remove: '<p>' | remove: '</p>' | emojify }}{% else %}<a href="{{ item.url | relative_url }}">{{ item.title }}</a>{% endif %}</li>
          {% endfor %}
        </ul>
        {% if news_size > 5 %}
        <div id="hidden-news" class="is-hidden">
          <ul class="list-compact">
            {% for item in news offset: 5 %}
            <li>{{ item.date | date: "[%Y.%m]" }} {% if item.inline %}{{ item.content | remove: '<p>' | remove: '</p>' | emojify }}{% else %}<a href="{{ item.url | relative_url }}">{{ item.title }}</a>{% endif %}</li>
            {% endfor %}
          </ul>
        </div>
        <span class="news-toggle" onclick="toggleNews()">Show more news</span>
        {% endif %}
      </td>
    </tr>
  </tbody>
</table>

<!-- Selected Publications Section -->
<table class="section-table">
  <tbody>
    <tr>
      <td class="section-cell">
        <h2>Selected Publications</h2>
        <div class="pub-annotated">
        {% assign pillar_topics = "AI Security & Safety;Machine Learning Privacy;Data Privacy" | split: ";" %}
        {%- for t in pillar_topics %}
        {% bibliography -f {{ site.scholar.bibliography }} -q @*[selected=true&&topic={{t}}] %}
        {%- endfor %}
        </div>
        <p class="text-meta"><a href="{{ '/publications/' | relative_url }}">See the full publication list &rarr;</a></p>
      </td>
    </tr>
  </tbody>
</table>

<!-- Honors Section -->
<table class="section-table">
  <tbody>
    <tr>
      <td class="section-cell">
        <h2>Selected Awards &amp; Honors</h2>
        <ul class="list-compact">
          {% for honor in site.data.honors %}
          <li>{{ honor.prefix }}<strong>{% if honor.url %}<a href="{{ honor.url }}">{{ honor.name }}</a>{% else %}{{ honor.name }}{% endif %}</strong>{{ honor.suffix }}, {{ honor.year }}{% if honor.extra_links %} &nbsp;Coverage: {% for link in honor.extra_links %}[<a href="{{ link.url }}">{{ link.label }}</a>]{% unless forloop.last %} {% endunless %}{% endfor %}{% endif %}</li>
          {% endfor %}
        </ul>
      </td>
    </tr>
  </tbody>
</table>

<!-- Service Section -->
<table class="section-table">
  <tbody>
    <tr>
      <td class="section-cell">
        <h2>Service</h2>
        <ul>
          {% for service in site.data.services %}
          <li><b>{{ service.title }}</b>: {{ service.abbrs }}</li>
          {% endfor %}
        </ul>
      </td>
    </tr>
  </tbody>
</table>
