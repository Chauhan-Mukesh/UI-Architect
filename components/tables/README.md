# Tables

## Purpose
Present structured data for scanning, sorting, and comparison. Only use for tabular data — never for layout.

## Structure
- `<table>` with `<caption>` (or hidden caption with `sr-only`).
- `<thead>` with `<th scope="col">`.
- `<tbody>` with `<tr>` and `<td>`.
- `<th scope="row">` when rows have identifiers.

## Variants
- Basic data table.
- Sortable / filterable.
- Selectable rows.
- Grouped rows (summary + subrows).
- Editable inline.

## States
- Sorted column indicated via `aria-sort`.
- Row hover, row selected, row focused.
- Empty state designed with explanation and a suggested action.

## Mobile
- Convert to per-row cards with the same field order; or horizontal scroll with a sticky first column.
- Never squish columns until unreadable.

## Accessibility
- Real table markup — never `<div role="table">` unless the design system requires it and then implement the full ARIA table pattern.
- Sort controls in `<th>` are `<button>` with `aria-sort` on the header.
- Selection uses real checkboxes with labels.

## Anti-patterns
- Table used for layout.
- Sort icons without `aria-sort`.
- Actions column with icon-only buttons and no labels.
