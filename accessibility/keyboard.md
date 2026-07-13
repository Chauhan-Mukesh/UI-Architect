# Accessibility — Keyboard

## Purpose
Every interaction must be operable from the keyboard, in a logical order, with visible focus.

## Rules
- All interactive elements reachable via Tab in a sensible order.
- Skip-link at the top of the body jumping to `#main-content`.
- No `tabindex` above 0.
- `tabindex="-1"` only for elements JS moves focus to programmatically.
- Custom widgets follow WAI-ARIA authoring patterns (menu, dialog, combobox, tabs, tree).

## Focus behavior
- Modal open → focus moves inside modal.
- Modal close → focus returns to invoking element.
- Route change (SPA) → focus moves to `<main>` or the new page's heading.
- Menu open → focus does not automatically move; arrow keys navigate.

## Anti-patterns
- Removing outline without a replacement focus style.
- `outline: 0` globally.
- Tab order that visually jumps around.
- Custom controls that hijack keyboard shortcuts.
