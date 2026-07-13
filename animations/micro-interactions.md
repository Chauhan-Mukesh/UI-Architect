# Animations — Micro-Interactions

## Purpose
Small state changes that acknowledge user input and reduce uncertainty.

## Patterns
- Button press: subtle transform (translateY 1px) + shadow reduction, 100–150ms.
- Toggle flip: 150–200ms with ease-in-out.
- Input focus: border color + subtle ring; 150ms.
- Checkbox check: draw stroke, 200ms.
- Copy-to-clipboard: brief label change ("Copied!") for 1.5s.

## Rules
- Feedback must arrive within 100ms of the user action.
- The animation cannot obscure or block the next action.
- Do not add a micro-interaction where none is needed.

## Anti-patterns
- Bouncy button presses that undermine tone.
- Loading spinners that appear for actions that complete in <100ms.
- Overly long confirmation animations that delay next step.
