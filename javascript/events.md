# JavaScript — Events

## Purpose
Bind behavior cleanly, tear down cleanly.

## Rules
- Use event delegation at the nearest logical parent for lists of similar elements.
- Store an `AbortController` per feature; call `abort()` on teardown.
- Use `addEventListener(type, handler, { signal, once, passive })` — options are cheap and clear.
- Prefer `passive: true` for scroll/touch listeners that don't `preventDefault`.
- Custom events via `new CustomEvent('name', { detail, bubbles })` for cross-component communication.

## Rules
- Never inline `onclick`.
- Never rely on event order between multiple listeners on the same element.
- Detach listeners when the DOM they observe is removed.

## Anti-patterns
- Binding a listener per item in a large list.
- Not cleaning up global listeners on route changes.
- Using `mouseover`/`mouseout` when `mouseenter`/`mouseleave` fits better.
