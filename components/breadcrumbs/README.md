# Breadcrumbs

## Purpose
Show the visitor where they are in a hierarchy and let them go back to any ancestor.

## Structure
- `<nav aria-label="Breadcrumb">` containing `<ol>` of items.
- Each `<li>` is a link; the last item is the current page (not a link, `aria-current="page"`).

## Variants
- Standard chevron-separated.
- Rich (with icons for root or category).
- Truncated (for deep hierarchies with an ellipsis dropdown).

## States
- Hover on links; current item styled as text.

## Mobile
- Compact; consider showing only the last 2–3 levels with an ellipsis for deeper history.
- Never wrap to multi-line unless necessary.

## Accessibility
- Ordered list preserved.
- Current page has `aria-current="page"` and is not a link.
- Separator (chevron) is `aria-hidden`.

## Anti-patterns
- Breadcrumbs on pages that have no real hierarchy (fake trail).
- Long crumbs that wrap and break layout.
- Using breadcrumbs instead of a proper back link when hierarchy doesn't exist.
