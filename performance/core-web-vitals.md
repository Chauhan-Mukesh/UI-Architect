# Performance — Core Web Vitals

## Purpose
Core Web Vitals are how real users perceive performance. Every generated page targets them.

## Metrics (2024+)
- **LCP** (Largest Contentful Paint): ≤ 2.5s.
- **INP** (Interaction to Next Paint): ≤ 200ms.
- **CLS** (Cumulative Layout Shift): ≤ 0.1.

## LCP tactics
- Hero image or heading is the LCP candidate — optimize it.
- `<img>` in hero has `fetchpriority="high"`.
- Preload the hero image and the LCP font.
- Server-render text; avoid client-side rendering for the first paint.
- Do not defer critical CSS.

## INP tactics
- Break long tasks into < 50ms chunks.
- `requestIdleCallback` for non-urgent work.
- Debounce input; use event delegation.
- Avoid layout thrash (reading then writing then reading).

## CLS tactics
- `width` and `height` on every `<img>` and `<iframe>`.
- Reserve space for late-loading content (ads, embeds).
- Never insert content above the current scroll position.
- Use CSS `aspect-ratio` on responsive media.

## Measurement
- Real-user monitoring beats lab metrics.
- PSI + CrUX for a starting point.
