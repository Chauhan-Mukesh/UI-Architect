# Template — Blog

## Purpose
Structural spec for a blog or publication.

## Index sections
1. Header with title/description
2. Featured or recent posts
3. Filters, categories, or archive
4. Optional sidebar (about, subscribe, popular)

## Post sections
1. Header: title, byline, date, category, read time
2. Optional hero figure
3. Body prose (60–75ch measure)
4. Author bio + next/prev + related posts

## Cross-references
- Layout: `layouts/blog/variants/01|02|03`.
- Components: cards, pagination, breadcrumbs, search.
- Quality: `checklists/blog.md`, `seo/structured-data.md`.

## Rules
- Reading experience is priority one; no modal ambush.
- Every post is `<article>`; dates via `<time datetime>`.
- RSS/atom feed present.

## Anti-patterns
- Autoplay embedded video.
- Infinite scroll without a fallback pagination.
- Newsletter modal on first visit.
