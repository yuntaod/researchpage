---
layout: barron
permalink: /publications/
title: Publications
years: [2026, 2025, 2024, 2023, 2022, 2021]
venue_tags: true
filters: [AI Security & Safety, Machine Learning Privacy, Data Privacy, Hacking, Defense, Data Mining]
nav: true
nav_order: 1
---

<!-- Publications Section -->
<table class="section-table section-table--spaced">
  <tbody>
    <tr>
      <td class="section-cell">
        <div class="pub-filters">
          <button type="button" class="section-chip is-active" data-filter="all">All</button>
          {%- for filter in page.filters %}
          <button type="button" class="section-chip" data-filter="{{ filter | escape }}">{{ filter }}</button>
          {%- endfor %}
        </div>
        <p class="pub-legend">⭑ equal contribution &nbsp;&nbsp; ◊ mentored student</p>

        <div class="pub-list">
        <h3 class="section-year">Manuscripts</h3>
        {% bibliography -f {{ site.scholar.bibliography }} -q @*[manuscript=true] %}
        {%- for y in page.years %}
        <h3 class="section-year">{{ y }}</h3>
        {% bibliography -f {{ site.scholar.bibliography }} -q @*[year={{y}}&&manuscript!=true] %}
        {%- endfor %}
        </div>
      </td>
    </tr>
  </tbody>
</table>

<script>
document.querySelectorAll('.pub-filters button').forEach(function (button) {
  button.addEventListener('click', function () {
    var filter = button.dataset.filter;
    document.querySelectorAll('.pub-filters button').forEach(function (other) {
      other.classList.toggle('is-active', other === button);
    });
    document.querySelectorAll('.pub-list .bibliography').forEach(function (list) {
      var shown = 0;
      list.querySelectorAll(':scope > li').forEach(function (item) {
        var tags = item.querySelector('[data-tags]').dataset.tags.split(';').map(function (tag) { return tag.trim(); });
        var match = filter === 'all' || tags.indexOf(filter) !== -1;
        item.hidden = !match;
        if (match) shown += 1;
      });
      list.hidden = shown === 0;
      var heading = list.previousElementSibling;
      if (heading && heading.classList.contains('section-year')) heading.hidden = shown === 0;
    });
  });
});
</script>
