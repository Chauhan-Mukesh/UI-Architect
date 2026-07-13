# Blog Layouts

## Purpose
Make posts discoverable, readable, and shareable. Optimize for both index browsing and single-post reading.

## When to use which variant
- **01 Editorial index** — a curated publication feel with hero posts.
- **02 List index** — clean chronological or category-organized listing.
- **03 Single post reading** — the article view.

## Universal rules
- Reading experience is the priority; ads and modals should never break the flow.
- Every post has title, author, date, category, estimated read time.
- URLs are stable and human-readable.

## Anti-patterns
- Infinite scroll that breaks browser back navigation.
- Auto-playing embedded video.
- Newsletter modal on first visit.

## Accessibility
- `<article>` for each post.
- `<time datetime>` for dates.
- Author link goes to a real author page or omits the link.

## Responsive
- Mobile: single column; TOC (if present) as a collapsed drawer.
- Desktop: content-first with optional sidebar for related content.
