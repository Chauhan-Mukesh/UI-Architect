# CSS — Flex

## Purpose
One-dimensional layout: rows or columns of items that align, distribute, and wrap.

## Rules
- Use `display: flex` for nav rows, button groups, form rows, and card contents.
- Use `gap` for spacing between children.
- Set `min-width: 0` on flex children that contain overflowing content (text truncation).
- `flex-wrap: wrap` for tag chip rows and other wrap-friendly patterns.

## Common patterns
- Space between logo and nav: `justify-content: space-between`.
- Center a single item: `place-items: center` on the parent.
- Wrap chips: `flex-wrap: wrap; gap: var(--space-2);`.

## Anti-patterns
- Flex for 2D layouts — use Grid.
- Margin-based spacing between flex children instead of gap.
- Fixed widths on flex children that need to shrink.
