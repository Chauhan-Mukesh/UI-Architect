# HTML — Tables

## Purpose
Tables are for tabular data. Use them only where the relationships are truly tabular.

## Rules
- `<table>` with `<caption>` (visible or `sr-only`).
- `<thead>` with `<tr>` and `<th scope="col">` for column headers.
- `<tbody>` for data rows. Optional `<tfoot>` for totals.
- Row headers: `<th scope="row">` for the first cell in a row when it labels the row.
- Complex headers: use `id` on `<th>` and `headers` attribute on `<td>` — only when scope alone is insufficient.
- Every `<td>` associated with at least one header.

## Interactivity
- Sortable columns: `<button>` inside the `<th>` with `aria-sort="ascending|descending|none"` on the header.
- Selectable rows: `<input type="checkbox">` with a label; row selection state visible.
- Sticky headers/columns: purely visual (CSS `position: sticky`); do not break DOM order.

## Anti-patterns
- Tables for layout.
- `<div role="table">` in place of `<table>` (only justifiable in a specific virtualized data-grid; then implement full ARIA grid pattern).
- Missing `<th scope>` when rows have identifiers.
- Icon-only cells (check/cross) without accessible labels.
