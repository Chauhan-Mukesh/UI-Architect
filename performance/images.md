# Performance — Images

## Purpose
Images are the biggest bytes on most pages. Optimize aggressively.

## Rules
- Formats: prefer AVIF; fall back to WebP; fall back to JPEG/PNG. Use `<picture>` with `<source type="image/avif">`.
- Serve responsive sizes with `srcset` + `sizes`.
- Explicit `width` and `height` to prevent CLS.
- `loading="lazy"` on off-screen images. `loading="eager"` + `fetchpriority="high"` for LCP image.
- `decoding="async"` on non-critical images.
- Compress: quality 70–85 for JPEG/WebP, 60–75 for AVIF.
- Provide meaningful `alt` (or `alt=""` when decorative).

## Rules
- SVG for logos and icons; inline when they carry interactive states.
- No 4000×3000 hero images served to mobile.
- Use CSS `aspect-ratio` on responsive containers.

## Anti-patterns
- Missing width/height on media elements.
- Hero image without preload for LCP.
- Base64 embeds in HTML for anything larger than an icon.
- Full-resolution PNG for photographic content.
