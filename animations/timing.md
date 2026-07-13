# Animations — Timing

## Purpose
Consistent timing tokens make motion feel like part of the same system, not a collage.

## Tokens
- `--dur-instant`: 0ms (used for reduced motion)
- `--dur-fast`: 120ms — micro interactions
- `--dur-base`: 200ms — hover, toggles, small state changes
- `--dur-med`: 300ms — dialogs, panels, section transitions
- `--dur-slow`: 500ms — enter/exit of large regions
- `--dur-slowest`: 800ms — story-scale reveals

## Easing
- `--ease-out`: `cubic-bezier(0.16, 1, 0.3, 1)` — enters
- `--ease-in`: `cubic-bezier(0.4, 0, 1, 1)` — exits
- `--ease-in-out`: `cubic-bezier(0.4, 0, 0.2, 1)` — persistent motion
- Linear only for progress indicators.

## Rules
- Use tokens; do not hardcode durations in components.
- Match easing to direction (out for arriving, in for leaving).
- Total time for a UI transition rarely exceeds 500ms.
