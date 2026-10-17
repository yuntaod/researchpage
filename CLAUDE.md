# CLAUDE.md (barron-style branch)

**Before doing anything else, read `TODO.md` in the repo root and remind the
user of any open items.**

This branch (`barron-style`) is the source of the live site at yuntaodu.me.
Full repo documentation lives in master's CLAUDE.md: `git show master:CLAUDE.md`.

## Style rules

- Never use em dashes (`—` / `&mdash;`) anywhere in site content. Use a
  period, comma, or colon instead.
- Venue names use conventional abbreviations (e.g. `ACM CCS`, `NDSS`,
  `USENIX Security`, `IEEE ICDE`), kept consistent everywhere: bib `abbr`
  fields, news items, and page text.

## Publication ordering in `_bibliography/papers.bib`

File order = render order (jekyll-scholar has no sort configured). Keep
entries grouped by year, newest year first. Within each year:

1. First-author papers come first (first principle). Co-first (`*` marker,
   Yuntao listed second) ranks between first-author and non-first-author.
2. Papers from the same venue stay adjacent (second principle). When the two
   principles conflict, keep the venue group together and place the whole
   group at the position its best-ranked (first-author) paper would get;
   order inside the group: first author, then co-first, then non-first.

Apply this when inserting any new entry.

## Impact

`_data/paper_impact.yml` stores impact by bibliography entry ID, rendered by
`_includes/paper_impact.html` as a compact line below each paper. Use the same
rounded tag style as research categories, with a muted purple Impact tag and
normal-size description text. Currently only AutoProfiler and AutoLocate have
impact text.
Use the official QGIS documentation link and numbered MIT Technology Review
links. Keep completed outcomes and ongoing collaborations distinct.
Research topics remain in `papers.bib`.

Place each research category tag and its one-sentence description on the same
line, allowing natural wrapping. Impact follows on its own line, using the same
font and size for its description.
Use "Covered by MIT Technology Review" with numbered links for AutoProfiler.

RATION is the first selected publication and is listed as a manuscript without
PDF, arXiv, or code links until those are available. Its title and author list
match the research statement bibliography. The AI Security & Safety pillar
introduces agent security principles before threats from LLM misuse. Link the
phrase "risk-based access control" without repeating "(RATION)" in the overview.

Publications views put RATION, PhantomMIA, and BrowseSafe++ in a Manuscripts
section before the year or topic groups. Exclude `manuscript=true` from those
groups to avoid duplicates. RATION remains the first homepage selected paper;
PhantomMIA and BrowseSafe++ are in the full list. BrowseSafe++ has verified
arXiv, code, and project links; PhantomMIA has no confirmed public link yet.
