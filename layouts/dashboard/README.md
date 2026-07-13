# Dashboard Layouts

## Purpose
Support recurring tasks by making the right data and controls visible without hunting.

## When to use which variant
- **01 Sidebar + workspace** — most SaaS and admin surfaces with many top-level areas.
- **02 Top-nav + tabbed workspace** — flatter apps with a handful of areas.
- **03 Multi-panel operational** — high-density work surfaces (analytics, ops).

## Universal rules
- Primary task path visible from every screen (or reachable in one click).
- Empty states are designed, not accidents.
- Loading, error, and permission-denied states are first-class.
- Density scales with the operator, not the visitor.

## Anti-patterns
- Marketing patterns leaking into the workspace (huge heroes, decorative hero images).
- Modal-in-modal flows for real work.
- Toast-only feedback for consequential actions.
- Sidebar that hides itself and doesn't restore.

## Accessibility
- Sidebar is `<nav aria-label>` with current item marked via `aria-current="page"`.
- Focus is managed across route changes.
- All destructive actions have keyboard-confirmable dialogs, not double-toast confirmations.

## Responsive
- Mobile: sidebar collapses to a menu; primary tasks remain accessible.
- Desktop: three-region layout tolerable (nav + main + inspector) when justified.
