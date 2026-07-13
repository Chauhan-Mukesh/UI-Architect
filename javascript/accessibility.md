# JavaScript — Accessibility

## Purpose
Custom behavior must not degrade accessibility. Every scripted interaction has a keyboard and screen-reader story.

## Rules
- Focus management on route changes and dialog open/close.
- Dialogs: trap focus, close on Escape, return focus to invoker.
- Menus: arrow keys, Home/End, Escape to close.
- Combobox: full WAI-ARIA combobox pattern.
- Announce dynamic changes with `aria-live` regions (`polite` default, `assertive` for errors).
- Update ARIA state alongside visual state (`aria-expanded`, `aria-selected`, `aria-current`).
- Never remove focus from a control on click — the browser handles that.

## Rules
- Every interactive element reachable via keyboard.
- Skip-link works.
- Custom widgets follow the appropriate WAI-ARIA authoring pattern.

## Anti-patterns
- `tabindex="-1"` on things that should be focusable.
- `tabindex` above 0 (breaks natural order).
- Focus that visibly disappears after an interaction.
- Live regions that announce on every keystroke.
