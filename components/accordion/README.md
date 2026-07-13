# Accordion

## Purpose
Progressive disclosure for long-form content (FAQ, settings, details). See also `components/faq/`.

## Structure
- Native `<details><summary>` where possible.
- Scripted accordion: trigger (`<button aria-expanded aria-controls>`) + panel with matching id.

## Variants
- Independent items (multiple open).
- Exclusive (one-at-a-time).
- Grouped with categories.

## States
- Collapsed / expanded.
- Focus-visible on trigger.

## Mobile
- Full-width trigger; large tap target.
- Content wraps; no horizontal scroll inside panels.

## Accessibility
- Trigger is a `<button>` (or `<summary>` with native details).
- `aria-expanded` updates on toggle.
- Do not use accordions to hide primary navigation or critical calls to action.

## Anti-patterns
- Accordion in accordion (redesign the content).
- All-panels-collapsed default when the content is scannable.
- Motion that hides expand direction from screen-reader users (motion is fine; announcement isn't).
