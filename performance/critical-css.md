# Performance — Critical CSS

## Purpose
Get the first paint's styles into the initial HTML so nothing render-blocks after the first byte.

## Rules
- Inline critical CSS in `<head>` for above-the-fold rendering.
- Load the full stylesheet with `<link rel="stylesheet">` — modern browsers parallelize.
- If needed, defer non-critical CSS with `media="print"` swap trick or `<link rel="preload">` + `onload`.
- Keep inlined CSS under ~14 KB (one round-trip target).

## Rules
- Do not inline the entire stylesheet unless it's already tiny.
- Extract only the rules used by the above-the-fold DOM.
- Recompute critical CSS when the design system changes.

## Anti-patterns
- Inlining megabytes of CSS.
- Loading stylesheets synchronously in `<head>` before the LCP element.
- Duplicating critical CSS inline and external without deduplication.
