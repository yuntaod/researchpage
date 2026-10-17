---
layout: barron
permalink: /publicationsbyyear/
title: Publications
years: [2026, 2025, 2024, 2023, 2022, 2021]
nav: false
---

<!-- Publications by year -->
<table class="section-table section-table--spaced">
  <tbody>
    <tr>
      <td class="section-cell">
        <h2>Publications</h2>
        <p>The complete publication list can be found on <a href="https://scholar.google.com/citations?user={{ site.scholar_userid }}">Google Scholar</a>. Also browse publications <a href="{{ '/publicationsbytopic/' | relative_url }}">by topic</a>.<br>
        <sup>*</sup> equal contribution, <sup>†</sup> mentored student</p>

        <h3 class="section-year">Manuscripts</h3>
        {% bibliography -f {{ site.scholar.bibliography }} -q @*[manuscript=true] %}
        {%- for y in page.years %}
        <h3 class="section-year">{{ y }}</h3>
        {% bibliography -f {{ site.scholar.bibliography }} -q @*[year={{y}}&&manuscript!=true] %}
        {%- endfor %}
      </td>
    </tr>
  </tbody>
</table>
