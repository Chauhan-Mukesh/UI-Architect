# JavaScript — Performance

## Purpose
Every millisecond of JS costs a user. Ship the minimum; ship it late.

## Rules
- Prefer HTML/CSS solutions to JS ones (`:has()`, `<details>`, `<dialog>`, form validation attributes).
- Debounce input handlers (300–500ms for search, 60–120ms for resize).
- `requestAnimationFrame` for anything touching layout or paint.
- `IntersectionObserver` for scroll-triggered features, never scroll listeners.
- `requestIdleCallback` for non-urgent work.
- Split large modules; dynamic-import on interaction.
- Preload critical modules with `<link rel="modulepreload">` when justified.

## Rules
- Avoid forced synchronous layout (reading `offsetHeight` right after writing).
- Batch DOM writes.
- Never poll when an event exists.

## Anti-patterns
- Loading a full framework for a modal.
- 300 KB of JS for a marketing page.
- Third-party scripts that block first paint.
