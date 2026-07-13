# Prompt Module — Typography

## Purpose
Choose type voice, pairing, and scale that carry the tone and stay legible across viewports.

## Inputs
- Design direction card.

## Steps
1. **Voice.** Pick one file from `typography/<voice>.md`. Do not mix voices.
2. **Pairing.** Load `typography/font-pairings.md`. Choose display + text or use one family across roles. Justify.
3. **Scale.** Load `typography/type-scales.md`. Pick a modular scale (usually 1.125 / 1.2 / 1.25 / 1.333). Emit rem-based tokens.
4. **Role mapping.** Assign scale steps to: `display`, `h1`, `h2`, `h3`, `h4`, `body-lg`, `body`, `body-sm`, `caption`, `overline`.
5. **Rhythm.** Line-height: 1.1–1.25 for headings, 1.5–1.7 for body. Letter-spacing: slight negative on large display, positive on all-caps overline only.
6. **Measure.** Body content 60–75ch. Never wider unless the layout demands.
7. **Fallbacks.** Every custom face has a same-metrics fallback stack. Use `font-display: swap` or `optional`.
8. **Load `industries/<vertical>/typography.md`** to sanity-check.

## Outputs
- Type token block (CSS variables): font families, size scale, line-heights, weights.
- Role → token map.

## Guardrails
- Never use more than two type families.
- Never use weight below 400 for body copy.
- All-caps only for `overline` or short labels; letter-space at least +0.02em.
- Legibility beats novelty for medical/finance/government.
