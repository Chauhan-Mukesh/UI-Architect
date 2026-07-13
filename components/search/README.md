# Search

## Purpose
Let visitors find content quickly. Search is a primary UI on any site with more than ~20 pages.

## Structure
- `<form role="search">` with `<input type="search">` and a submit button.
- Optional: results dropdown, autocomplete suggestions, filters.

## Variants
- Header-inline search (compact).
- Full-page search (docs, help centers).
- Command palette (⌘K).

## States
- Empty, typing, results, loading, no results, error.
- Autocomplete suggestions with keyboard navigation.

## Mobile
- Search input expands to full-width on focus.
- Keyboard shows search action.

## Accessibility
- Real `<label>` (visible or `sr-only`).
- Autocomplete listbox pattern with `aria-autocomplete`, `aria-controls`, and combobox roles.
- Results announced via `aria-live="polite"` when they change.
- Escape closes the results dropdown.

## Anti-patterns
- Search that requires a click on a tiny magnifier icon to reveal.
- No-results state with no suggestion (should offer related terms or a link to browse).
- Autocomplete that hijacks arrow keys away from expected behavior.
