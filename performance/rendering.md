# Performance — Rendering

## Purpose
Keep the browser doing composited work, not layout. Every dropped frame is a UX cost.

## Rules
- Animate `transform` and `opacity` — they trigger composite only.
- Avoid animating `width`, `height`, `top`, `left` — these trigger layout.
- Use `will-change` sparingly; only for elements that will imminently animate.
- Read then write DOM in batches; avoid interleaving.
- Use `content-visibility: auto` for large off-screen sections.
- Avoid CSS filters and box-shadow spread on large moving elements.

## Rules
- Use `requestAnimationFrame` for scheduling visual updates.
- Debounce resize handlers with `ResizeObserver` instead of window resize events.
- Prefer CSS `@container` and `aspect-ratio` to JS layout logic.

## Anti-patterns
- Forced sync layout (`element.offsetHeight` right after a style change).
- Layout inside a scroll handler.
- `will-change: transform` on every element.
- CSS filters on hero images that animate.
