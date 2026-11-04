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

## Publication list format

Pages that set `venue_tags: true` (the Publications page and the homepage)
render each entry with a blue venue tag before the title, the full venue name
below the authors (the venue tag text, e.g. "Manuscript" or "Technical
Report", when the bib entry has no full name), and icon-only links from
`_includes/pub_link.html` right after it. Publication entries (on both pages)
use the shared Google Sans Flex font stack, matching the rest of the site.
Sizes are written as `calc(Npx / 1.1)` to cancel the body `zoom: 1.1`.
Title 15.5px weight 650 without an underline; authors, venue, summary, and Impact rows 14px
regular in the shared muted gray `#5f6368`; venue tag 12px regular (not bold) in
the link blue `#1a73e8`; topic tags 11.5px regular weight. Topic tags there use the gray
outline style (`pub-topic--outline`), followed by the optional bib `tags`
field (e.g. `tags = {Hacking}` or `tags = {Defense}`). The Publications page
filters entries by the tags in its `filters` front matter. Bib author markers
`*` and `†` render there as a superscript star (equal contribution) and a
symmetric hollow diamond (mentored student), explained once in a legend line
below the filter tags. `_includes/mentee_marker.html` renders the same square
SVG diamond in the legend and author rows so its shape does not depend on fonts.
The homepage Selected Publications heading has an "All publications →" chip
at the top right, and `.pub-annotated` there hides `†` and `hide_star` markers.
`venue_year: true` (set on the homepage) adds the year to the venue tag on
lists not grouped by year. Without the flag, `_layouts/bib.html` keeps the original venue
line, colored topic tags, and bracket links.

Publication lists use disc bullets with a compact 1.2em left indent.
Full venue names and authors remain upright, with Yuntao's name
underlined and bold (weight 700). Link icons render at 12px inside 26px by 16px pills,
compensating for body zoom. All publication category, filter, and Impact labels
use regular weight. Award entries also use regular weight.

The shared stylesheet defines the font and grayscale hierarchy: Google Sans
Flex with Roboto/Arial/Helvetica fallbacks; headings `#202124`, body text
`#3c4043`, and auxiliary text `#5f6368`. News dates use `#80868b`; links use
`#1a73e8` (hover `#174ea6`). All list markers are black. News and honors lists use a
compact 1.2em indent. Research-card descriptions are upright; the shared
860px column gives desktop cards room to keep their short descriptions on
one line, while mobile cards stack and wrap naturally.
The page's top margin is 12px and the desktop header's top padding is 24px,
keeping the name closer to the top without changing spacing between sections.

## Impact

`_data/paper_impact.yml` stores impact by bibliography entry ID, rendered by
`_includes/paper_impact.html` as a compact line below each paper. Use the same
rounded tag style as research categories, with an amber Impact tag (outline shape, regular weight) and
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
match the research statement bibliography. The homepage overview has three
pillars that follow the research statement's arc: Threat Discovery,
Vulnerability Auditing, and AI Control. The AI Control
pillar links the phrase
"system-level risk-based access control" to RATION without repeating "(RATION)".

Publications views put RATION, PhantomMIA, and BrowseSafe++ in a Manuscripts
section before the year groups. Exclude `manuscript=true` from those
groups to avoid duplicates. RATION remains the first homepage selected paper;
PhantomMIA and BrowseSafe++ are in the full list. BrowseSafe++ has verified
arXiv, code, and project links; PhantomMIA has no confirmed public link yet.
