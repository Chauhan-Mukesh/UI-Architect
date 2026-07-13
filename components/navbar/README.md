# Navbar

## Purpose
Provide top-level navigation and orient the visitor. Present without dominating.

## Structure
- `<header>` containing `<nav>` and brand.
- Left: brand mark. Center or left: primary nav. Right: user/utility actions.
- Mobile: brand + menu button.

## Variants
- Static top bar.
- Sticky on scroll.
- Transparent-over-hero, solid on scroll.
- Mega-menu for large information architectures.

## States
- Default, sticky/transitioned, scrolled, current page indicator (`aria-current="page"`).
- Menu open (mobile / mega).

## Mobile
- Menu button opens a full-screen or drawer nav.
- Focus trapped in the drawer while open; Escape closes.
- Body scroll locked when drawer open.

## Accessibility
- `<nav aria-label="Primary">`.
- Menu button has `aria-expanded` and `aria-controls`.
- Skip-link to `#main-content` before nav.
- Dropdowns navigable via keyboard (arrow keys within, Escape to close).

## Anti-patterns
- Sticky nav that consumes >72px on mobile.
- Hover-only dropdowns (unusable on touch).
- Mega-menus that mix marketing and IA links without hierarchy.
- Brand mark that is a `<div>` instead of a link to `/`.
