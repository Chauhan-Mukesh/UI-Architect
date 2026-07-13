# Accessibility — Focus

## Purpose
Focus is where the keyboard is looking. It must always be visible and predictable.

## Rules
- Use `:focus-visible` for focus styling — provides focus rings without ring on click.
- Focus indicator contrast: **3:1** against the adjacent surface.
- Focus ring must not be obscured by adjacent content or borders.
- Consistent focus ring across all interactive elements (color, thickness, offset).
- Do not use `outline: none` without providing another focus style.

## Focus management
- Dialogs trap focus while open and return on close.
- Route changes move focus to a stable landmark.
- Delete-in-list moves focus to the next item, not to nothing.
- Announced updates use `aria-live` — do not move focus for informational updates.

## Anti-patterns
- Focus rings smaller than 2px.
- Focus rings that only appear inside the element (invisible on some backgrounds).
- Removing focus after click but not after Tab.
