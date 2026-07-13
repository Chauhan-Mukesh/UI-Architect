# Pagination

## Purpose
Navigate through a paged result set. Use when total counts matter and pages are stable.

## Structure
- `<nav aria-label="Pagination">` with a list of page links plus prev/next.
- Current page marked with `aria-current="page"`.

## Variants
- Numbered (1, 2, 3, …, last).
- Prev/next only.
- Infinite scroll (with a fallback pagination link).
- Load-more button.

## States
- Current page, hover, focus-visible, disabled (prev on page 1, next on last).

## Mobile
- Compact: prev, current/total, next.
- Or a jump-to-page input for long result sets.

## Accessibility
- Prev/next are real buttons or links with accessible names ("Previous page", "Next page").
- Current page announced via `aria-current`.
- Page count communicated in a label or `aria-live` region for dynamic loads.

## Anti-patterns
- Infinite scroll without a way to bookmark a page.
- Prev/next only on datasets where users need to jump.
- Disabled controls without a visible disabled state.
