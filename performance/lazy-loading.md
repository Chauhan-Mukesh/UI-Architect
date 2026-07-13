# Performance — Lazy Loading

## Purpose
Defer non-critical resources until they are needed. Keep the initial payload small.

## Rules
- Images below the fold: `loading="lazy"`.
- Iframes: `loading="lazy"`.
- Non-critical JavaScript: dynamic `import()` on interaction (dialog, editor, chart).
- Below-the-fold sections: consider lazy-hydration (SSR-first, hydrate on visibility).
- Third-party embeds: load on interaction ("click to play").

## Rules
- Never lazy-load the hero image or LCP candidate.
- IntersectionObserver for custom lazy behavior; do not use scroll listeners.
- Set `rootMargin` so content loads slightly before entering the viewport.

## Anti-patterns
- Lazy-loading everything, including LCP.
- Lazy-loading with scroll listeners.
- Lazy-loading images that are always in view (below-fold that's already loaded).
