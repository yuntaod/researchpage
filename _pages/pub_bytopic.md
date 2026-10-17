---
layout: barron
permalink: /publicationsbytopic/
title: Publications
topics: [AI Security & Safety, Machine Learning Privacy, Data Privacy, Recommender Systems, Spatio-temporal Data Mining]
nav: false
---

<!-- Publications by topic -->
<table class="section-table section-table--spaced">
  <tbody>
    <tr>
      <td class="section-cell">
        <h2>Publications</h2>
        <p>The complete publication list can be found on <a href="https://scholar.google.com/citations?user={{ site.scholar_userid }}">Google Scholar</a>. Also browse publications <a href="{{ '/publications/' | relative_url }}">by year</a>.<br>
        <sup>*</sup> equal contribution, <sup>†</sup> mentored student</p>

        <h3 class="section-year">Manuscripts</h3>
        {% bibliography -f {{ site.scholar.bibliography }} -q @*[manuscript=true] %}
        {%- for y in page.topics %}
        <h3 class="section-topic">{{ y }}</h3>
        {% bibliography -f {{ site.scholar.bibliography }} -q @*[topic={{y}}&&manuscript!=true] %}
        {%- endfor %}
      </td>
    </tr>
  </tbody>
</table>
