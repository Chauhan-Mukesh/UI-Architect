# Animations — Loading

## Purpose
Loading feedback tells the visitor the system is working and estimates the wait.

## Patterns
- <200ms: no feedback.
- 200–1000ms: spinner (ARIA-labeled).
- 1000ms+: skeleton screens that mirror the incoming layout.
- Long operations: progress bar with a numeric or descriptive label.

## Rules
- Match the skeleton to the layout that will appear (no shape mismatches).
- Announce loading state via `aria-busy="true"` on the loading region.
- Announce completion via `aria-live="polite"` if the user was waiting on it.
- Cancel or retry available for anything longer than 3 seconds without progress.

## Anti-patterns
- Spinners that never stop.
- Skeletons that morph into totally different layouts.
- Loading bar that goes to 90% and stalls.
