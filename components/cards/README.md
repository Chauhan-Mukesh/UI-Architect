# Cards

## Purpose
Group related content and actions into a bounded unit that can be scanned in one glance.

## Structure
- Container with optional media, header, body, footer.
- The whole card can be clickable or contain multiple links — pick one.
- Semantics: `<article>` when self-contained (blog post, product); `<div>` otherwise.

## Variants
- Media card — image or thumbnail dominant (blog, portfolio).
- Info card — text-first with optional icon (features, stats).
- Interactive card — the entire card is a link or button.
- Selectable card — used in flows where the card is a choice.

## States
- Default, hover (subtle lift or border change), focus-visible, active, selected.
- Hover state must not depend on color alone; add border, shadow, or transform.

## Mobile
- Cards flow to a single column; keep visual hierarchy.
- Touch target for card link fills the card interior; padding on interior keeps content breathable.

## Accessibility
- Clickable card: wrap primary link in the heading; do not wrap the whole card in `<a>` unless the target is unambiguous.
- Ensure only one primary link per card in the tab order; use `aria-labelledby` to associate the card's main link.
- Selectable cards use `role="option"` inside `role="listbox"` or a native `<input type="radio">` overlay.

## Anti-patterns
- Cards with multiple competing links and no clear primary.
- Cards where hover reveals essential content — invisible on touch.
- Uniform card grids used for content that isn't uniform.
