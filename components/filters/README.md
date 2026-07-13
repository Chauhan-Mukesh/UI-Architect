# Filters

## Purpose
Narrow a large set of items to what the visitor wants.

## Structure
- Group of controls (checkboxes, selects, ranges) applied to a result list.
- Applied filter chips visible above results with individual clear affordances.
- Clear-all action.

## Variants
- Sidebar filters (desktop) + bottom sheet (mobile).
- Inline filter bar (small filter counts).
- Faceted search (filters mirror data facets, with counts).

## States
- Idle, applied, loading (results updating), empty (no results).
- Sync to URL so filter state is shareable.

## Mobile
- Bottom sheet with apply/reset actions and current count.
- Keyboard-accessible: Tab through controls, Escape closes sheet.

## Accessibility
- Every filter is a real form control with a real label.
- Counts adjacent to filter labels (`aria-describedby`).
- Result count announced (`aria-live="polite"`) as filters change.
- Applied chips have accessible names ("Remove filter: Category = Books").

## Anti-patterns
- Filter changes that require a submit but do not communicate it.
- Filter panel that reflows every time a filter changes.
- Counts that never update but stay visible.
