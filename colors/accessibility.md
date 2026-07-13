# Colors — Accessibility

## Purpose
Contrast is a floor, not a target. Every combination in use must pass at least AA.

## WCAG 2.2 requirements
- Body text on background: **4.5:1** minimum.
- Large text (≥18pt or 14pt bold): **3:1** minimum.
- Non-text UI components (icons, borders, form field boundaries): **3:1**.
- Focus indicators: **3:1** against the adjacent surface.
- Text over image backgrounds: use overlay or scrim to guarantee the ratio at the worst frame.

## Rules
- Compute contrast for every used pair, including hover, disabled, and dark mode.
- Do not rely on color alone; always pair with icon or label for status and state.
- Test in both light and dark themes.
- Provide a visible focus ring that meets 3:1 against surrounding UI, not just the underlying background.

## Common failures
- Placeholder text below AA (often <3:1).
- Muted-text color at 4.3:1 (fails).
- Disabled state with 2.5:1 (fine to fail visually, but do not include disabled text as essential information).
- Colored links inside colored text without underline or clear indicator.

## Anti-patterns
- Removing focus rings without providing a replacement.
- Palettes chosen for aesthetics that require reducing contrast.
- Announcing errors with red text alone.
