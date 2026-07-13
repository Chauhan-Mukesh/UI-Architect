# Sidebar

## Purpose
Persistent secondary navigation or contextual detail alongside main content.

## Structure
- `<aside>` or `<nav>` (if primarily navigation).
- Header (context or brand), body (nav or content), footer (utility).

## Variants
- Nav sidebar (dashboards, docs).
- Inspector sidebar (detail panel for selected item).
- Filter sidebar (search results, catalogs).

## States
- Expanded, collapsed (icon rail), hidden (drawer on mobile).
- Preserve state via localStorage or user preference.

## Mobile
- Sidebar becomes a drawer or full-screen menu.
- Content underneath is inert (`inert` attribute) while drawer open.

## Accessibility
- Landmark: `<nav aria-label>` or `<aside aria-labelledby>`.
- Toggle button has `aria-expanded` and `aria-controls`.
- Escape closes the drawer.

## Anti-patterns
- Sidebar that hides itself on scroll unexpectedly.
- Sidebar with more than one primary purpose (nav + filters + inspector all in one).
