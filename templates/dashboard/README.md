# Template — Dashboard

## Purpose
Structural spec for the primary workspace of a SaaS or admin product.

## Regions
1. Persistent navigation (sidebar or top nav — see `layouts/dashboard/`)
2. Contextual toolbar (search, filters, primary create action, view switcher)
3. Main content: list/grid/detail/chart region
4. Optional right rail: inspector or contextual actions

## Cross-references
- Layout: `layouts/dashboard/variants/01|02|03`.
- Components: sidebar, tables, charts, buttons, forms, filters, modal, toast, pagination.
- Quality: `checklists/dashboard.md`, `validators/accessibility.md`.

## Rules
- Empty, loading, and error states are first-class.
- Destructive actions confirmed; undo where feasible.
- Every list has search + sort.
- Focus management on route changes.

## Anti-patterns
- Marketing patterns (large hero image, decorative section headers) leaking into a workspace.
- Modal-in-modal flows.
- Icon-only toolbars without labels.
