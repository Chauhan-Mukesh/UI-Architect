# Animations — Hover

## Purpose
Hover states signal interactivity. They are a preview of action, not a reward for aiming.

## Patterns
- Link: color shift or underline appear, 100–150ms.
- Card: subtle lift (2–4px translateY) + shadow, 200–250ms.
- Button: color darken or lighten, 100–150ms.
- Icon: subtle rotation or scale, 150–200ms — only when meaningful.

## Rules
- Hover has a corresponding focus-visible state.
- Hover-only interactions do not work on touch. Do not hide critical info behind hover.
- Avoid layout shift on hover — never change size in ways that push neighbors.

## Anti-patterns
- Cards that grow so much on hover they overlap siblings.
- Hover states that flicker on adjacent elements.
- Long, dramatic hover animations that slow the visitor.
