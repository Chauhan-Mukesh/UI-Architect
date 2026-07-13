# Accessibility — Contrast

## Purpose
Contrast makes content usable for people with low vision, aging eyes, in glare, and on cheap screens.

## Ratios (WCAG 2.2 AA)
- Body text on background: **4.5:1**
- Large text (≥18pt or 14pt bold): **3:1**
- Non-text UI (icons, form field borders, focus rings): **3:1**
- Placeholder is body text — must meet **4.5:1**.

## Practice
- Compute contrast for every combination in use — including hover, disabled, dark mode.
- Text over images: overlay/scrim guarantees ratio at the worst frame.
- Focus ring against adjacent surface: 3:1.
- Do not add extra contrast only where the checker fails; audit the whole system.

## Tools
- Any browser DevTools contrast checker.
- Prefer perceptual contrast when possible (APCA is not yet WCAG-normative but informative).

## Anti-patterns
- Muted text at 4.3:1 (fails).
- Neon-on-white or pale-on-white that renders unreadable.
- Removing focus outline because it clashes with the palette.
