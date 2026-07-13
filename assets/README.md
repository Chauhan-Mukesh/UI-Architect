# Assets

## Purpose
Ready-made starter files the skill can reference or copy during the generate phase. Not required inputs — they're accelerators for common decisions the skill has already made.

## Contents

### `tokens/`
CSS custom-property files that fit the module contract. Copy, then adjust literal values to the palette or scale committed in the design direction card.

- `colors-neutral.css` — role-based neutral palette (light + dark).
- `colors-semantic.css` — semantic state roles (primary, success, warning, danger, info).
- `typography.css` — modular type scale, weights, line-heights.
- `spacing.css` — 8px-based spacing scale.
- `motion.css` — duration and easing tokens.
- `radius-shadow.css` — radius and elevation tokens.

### `html/`
- `skeleton.html` — reference HTML5 document with every metadata slot the SKILL loading map expects (viewport, canonical, OG, Twitter, JSON-LD placeholder, skip link, landmarks).

### `css/`
- `reset.css` — small opinionated reset that pairs with the token files.

## Rules
- The skill uses these as **starting points**, never as finished output.
- Every literal value should be swapped for one from the committed design direction.
- Fine to omit sections you don't need; do not omit the semantic structure.

## Anti-patterns
- Copying assets verbatim without adjusting.
- Adding brand colors as literals inside components; components must reference tokens.
