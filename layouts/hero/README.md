# Hero Layouts

## Purpose
The hero must answer "am I in the right place?" and "what should I do next?" within the first viewport on any device.

## When to use which variant
- **01 Statement** — copy-forward positioning where the message is the product.
- **02 Split** — for offerings that need proof (image, screenshot, demo) alongside the pitch.
- **03 Immersive** — when imagery or motion carries the emotional weight (agency, restaurant, portfolio).

## Universal rules
- Exactly one primary CTA. Secondary CTA optional and visually subordinate.
- Headline is a single, testable sentence. Not a slogan.
- Body copy is 1–2 sentences maximum.
- Trust signals (logos, ratings) may appear here — only if genuine and visually calm.
- Fold works on 360×640 (mobile floor) without cropping the CTA.

## Anti-patterns
- Auto-playing hero video that blocks first paint.
- Carousels of rotating headlines (they always lose one).
- Two competing "primary" CTAs.
- Decorative headline that requires body copy to explain the product.

## Accessibility
- Headline uses `<h1>`.
- CTA is a `<button>` (opens flow) or `<a href>` (navigates), never a styled div.
- Focus ring on CTA meets 3:1 against surrounding surface.
- Motion in hero is `prefers-reduced-motion` aware.

## Responsive
- Mobile: single column, headline → subhead → CTA → image (or CTA before image if fold pressure).
- Desktop: retain hierarchy; do not sacrifice CTA visibility for a bigger image.
