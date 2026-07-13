# Gallery

## Purpose
Present a set of images or media items for browsing or comparison. Never treat as decoration.

## Structure
- Grid or masonry of items; each item is `<figure>` with `<figcaption>` if caption exists.
- Click/tap opens a lightbox or navigates to a detail view.

## Variants
- Uniform grid — equal aspect thumbnails.
- Masonry — variable heights.
- Carousel — for constrained space; discouraged unless justified.
- Lightbox — full-screen viewer with prev/next/close.

## States
- Item: default, hover (subtle zoom or overlay), focus-visible (visible ring).
- Lightbox: open state traps focus, closes on Escape or explicit button.

## Mobile
- Single or two-column grid.
- Lightbox scaled to viewport with tap-outside-to-close (and a visible close button).
- Pinch-to-zoom respected; never disable.

## Accessibility
- Each image has meaningful alt (or empty alt if truly decorative).
- Lightbox is `role="dialog" aria-modal="true"` with accessible name.
- Keyboard: arrow keys for prev/next, Escape to close.
- Focus returns to the invoking thumbnail on close.

## Anti-patterns
- Lightbox with no visible close button.
- Alt text of "image" or filename.
- Carousel that autoplays or hides navigation on hover.
