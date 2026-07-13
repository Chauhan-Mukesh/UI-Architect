# Template — Documentation

## Purpose
Structural spec for product or open-source documentation.

## Regions
1. Global nav / brand / search / version switcher
2. Sidebar navigation (versioned if applicable)
3. Article content (title, summary, updated, body, prev/next)
4. Optional: table of contents (H2/H3)
5. Optional: version banner if reader is on an old version

## Cross-references
- Layout: `layouts/documentation/variants/01|02|03`.
- Components: search, breadcrumbs, sidebar, tables, accordion (sparingly).
- Quality: `checklists/documentation.md`.

## Rules
- Search is required.
- Code samples are copyable, syntax-highlighted, and language-labeled.
- Stable URLs; deep-link to headings.
- Dark mode at parity.

## Anti-patterns
- Marketing content masquerading as docs.
- Nav trees deeper than three levels.
- Docs behind login.
