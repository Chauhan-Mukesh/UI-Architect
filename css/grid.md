# CSS — Grid

## Purpose
Two-dimensional layout. Use for page composition, dashboards, and any structure with rows and columns.

## Rules
- Use `display: grid` for layouts where both axes need control.
- Prefer `grid-template-columns: repeat(auto-fit, minmax(min, 1fr))` for responsive card grids.
- Use `gap` instead of margins.
- Named grid areas for complex layouts; makes responsive rearrangement legible.
- Subgrid where support and design justify (browser support is now broad enough).

## Common patterns
- 12-column responsive: `grid-template-columns: repeat(12, minmax(0, 1fr))`.
- Auto-fitting cards: `grid-template-columns: repeat(auto-fit, minmax(240px, 1fr))`.
- Holy-grail app layout: named areas for header/nav/main/footer.

## Anti-patterns
- Grid used where Flex fits (1D content — nav items, button rows).
- Fixed pixel column widths in the main content area.
- Nested grids where a single grid with subgrid would work.
