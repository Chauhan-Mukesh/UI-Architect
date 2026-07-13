# Footer Component

## Purpose
Close the page with orientation, legal, contact, and brand. See `layouts/footer/` for full layouts.

## Structure
- `<footer>` element (only one per page).
- Groups of links, contact info, legal notices, copyright.

## Variants
- Compact — see `layouts/footer/variants/01.md`.
- Multi-column — see `layouts/footer/variants/02.md`.
- Editorial — see `layouts/footer/variants/03.md`.

## States
- Static. Newsletter form (if present) has its own states.

## Mobile
- Sections stack; column headers may become accordion triggers if the footer is long.

## Accessibility
- Legal and contact links in tab order.
- Social icons paired with accessible names.
- Locale switcher is a real control with a label.

## Anti-patterns
- Mega-footer with 50+ links.
- Missing basics (contact, legal).
- Newsletter modal launched from footer scroll.
