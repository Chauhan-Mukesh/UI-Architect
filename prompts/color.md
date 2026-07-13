# Prompt Module — Color

## Purpose
Commit to a palette that serves the tone, respects the industry, and passes contrast at AA. Palette must be expressible as design tokens.

## Inputs
- Design direction card from `prompts/design.md`.

## Steps
1. **Load only:** `colors/psychology.md`, `colors/industry.md`, `colors/accessibility.md`, `industries/<vertical>/recommended-colors.md`.
2. **Roles.** Assign every color a role: `background`, `surface`, `text`, `text-muted`, `border`, `primary`, `primary-contrast`, `accent`, `danger`, `success`, `warning`. Add role-scoped shades only if needed.
3. **Semantic tokens.** Express as CSS variables in one place (`:root` + `[data-theme="dark"]` if dark mode).
4. **Contrast matrix.** Verify every foreground/background pair used in UI:
   - Body text on background: ≥ 4.5:1
   - Large text and non-text UI: ≥ 3:1
   - Focus indicator against adjacent surface: ≥ 3:1
5. **State variants.** Hover/active/disabled derived from base with fixed offsets, not new hues.
6. **Dark mode (if scoped).** Re-check contrast; do not invert; recolor semantically.

## Outputs
- Token block (CSS variables) with hex + role.
- Contrast matrix table.
- Notes on dark-mode strategy (or "not in scope").

## Guardrails
- Never pick colors purely from vibes; every hue must trace to industry, tone, or contrast.
- Avoid pure `#000` on `#fff` unless the tone demands it; prefer near-black on near-white.
- Do not use color alone to convey meaning. Pair with icon/label.
- Reject palettes that require lowering AA to look correct.
