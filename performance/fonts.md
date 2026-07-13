# Performance — Fonts

## Purpose
Web fonts are expensive. Load carefully; render legibly during load.

## Rules
- Subset fonts to the characters you actually use.
- Serve WOFF2 only. Skip older formats.
- Preload the LCP-critical font: `<link rel="preload" as="font" type="font/woff2" crossorigin>`.
- `font-display: swap` (fallback shows immediately) or `optional` (skip if slow).
- Use a fallback stack with matching metrics (Inter → system-ui, sans-serif).
- Consider variable fonts to combine multiple weights into one file.

## Rules
- Two custom faces max.
- Do not load italics or heavy weights you never use.
- Self-host critical fonts.

## Anti-patterns
- Loading 8 font weights just in case.
- No fallback stack.
- `font-display: block` (invisible text during load).
