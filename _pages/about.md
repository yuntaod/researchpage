---
layout: barron
title: About
permalink: /
venue_tags: true
venue_year: true
---

<!-- Bio Section -->
<table class="section-table section-table--spaced">
  <tbody>
    <tr>
      <td class="section-cell">
        <p>I am a PhD candidate in computer science at <a href="https://www.purdue.edu/">Purdue University</a>, advised by Prof. <a href="https://www.cs.purdue.edu/homes/ninghui">Ninghui Li</a>.</p>
        <p>I study <b>security and privacy risks</b> in data-driven and AI systems, from discovering new vulnerabilities to auditing and controlling them. My current research focuses on three directions:</p>

        <div class="research-pillars">
          <div class="pillar pillar--discovery">
            <div class="pillar-title">🚨 Threat Discovery</div>
            <div class="pillar-sub">Uncovering new privacy and security risks</div>
            <div class="pillar-detail">in data-driven and AI systems, such as privacy leakage from <a href="https://arxiv.org/abs/2402.06806">synthetic data</a>, <a href="https://arxiv.org/abs/2609.07623">data visualization</a>, and <a href="https://arxiv.org/abs/2505.12402">AI misuse</a>.</div>
          </div>
          <div class="pillar pillar--mitigation">
            <div class="pillar-title">🔍 Vulnerability Auditing</div>
            <div class="pillar-sub">Quantifying privacy leakage in AI models</div>
            <div class="pillar-detail">through principled membership inference attacks, such as <a href="https://arxiv.org/abs/2507.21412">cascading</a> and <a href="https://arxiv.org/abs/2509.06796">imitative</a> MIAs, and audits of LLM <a href="https://arxiv.org/abs/2510.05699">tokenizers</a> and <a href="https://arxiv.org/abs/2601.02751">fine-tuning</a>.</div>
          </div>
          <div class="pillar pillar--threat">
            <div class="pillar-title">🛡️ AI Control</div>
            <div class="pillar-sub">Control Security and Safety Risks in AI</div>
            <div class="pillar-detail">agents through <a href="https://arxiv.org/abs/2610.24311">system-level risk-based access control</a>.</div>
          </div>
        </div>

        <p>My research has been recognized and supported by the <a href="https://www.purdue.edu/academics/ogsps/fellowship/">Ross Fellowship</a> (2023&ndash;2027), <a href="https://www.purdue.edu/newsroom/archive/purduetoday/releases/2023/Q2/purdue-invests-in-graduate-student-stipends,-raising-minima-and-launching-presidential-doctoral-excellence-awards.html">Presidential Doctoral Excellence Award</a> (2023&ndash;2027), and <a href="https://www.bobherbold.com/">Herbold Scholarship</a> (2023&ndash;2024).</p>
      </td>
    </tr>
  </tbody>
</table>

<!-- News Section -->
<table class="section-table">
  <tbody>
    <tr>
      <td class="section-cell">
        <h2 id="news">News</h2>
        {% assign news = site.news | sort: 'date' | reverse %}
        {% assign news_size = news | size %}
        <ul class="list-compact news-list">
          {% for item in news limit: 5 %}
          <li><span class="news-date">{{ item.date | date: "[%Y.%m]" }}</span> {% if item.inline %}{{ item.content | remove: '<p>' | remove: '</p>' | emojify }}{% else %}<a href="{{ item.url | relative_url }}">{{ item.title }}</a>{% endif %}</li>
          {% endfor %}
        </ul>
        {% if news_size > 5 %}
        <div id="hidden-news" class="is-hidden">
          <ul class="list-compact news-list">
            {% for item in news offset: 5 %}
            <li><span class="news-date">{{ item.date | date: "[%Y.%m]" }}</span> {% if item.inline %}{{ item.content | remove: '<p>' | remove: '</p>' | emojify }}{% else %}<a href="{{ item.url | relative_url }}">{{ item.title }}</a>{% endif %}</li>
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
        <div class="section-head">
          <h2>Selected Publications</h2>
          <a class="section-chip" href="{{ '/publications/' | relative_url }}">All publications &rarr;</a>
        </div>
        <div class="pub-annotated">
        {% assign pillar_topics = "AI Security & Safety;Machine Learning Privacy;Data Privacy" | split: ";" %}
        {%- for t in pillar_topics %}
        {% bibliography -f {{ site.scholar.bibliography }} -q @*[selected=true&&topic={{t}}] %}
        {%- endfor %}
        </div>
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
          <li>{{ honor.prefix }}{% if honor.url %}<a href="{{ honor.url }}">{{ honor.name }}</a>{% else %}{{ honor.name }}{% endif %}{{ honor.suffix }}, {{ honor.year }}{% if honor.extra_links %} &nbsp;Coverage: {% for link in honor.extra_links %}[<a href="{{ link.url }}">{{ link.label }}</a>]{% unless forloop.last %} {% endunless %}{% endfor %}{% endif %}</li>
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
