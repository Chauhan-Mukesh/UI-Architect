# Prompt Module — CSS

## Purpose
Emit modern, maintainable CSS built around variables, grid, flex, and logical properties. Mobile-first. Container queries where they simplify.

## Inputs
- Design direction card, HTML draft.

## Steps
1. **Load only:** `css/architecture.md`, `css/variables.md`, `css/grid.md`, `css/flex.md`, `css/responsive.md`, `css/container-queries.md`, `css/naming.md`, `css/css-layers.md` (if the project justifies layers).
2. **Tokens first.** Emit `:root` with color, spacing, radius, shadow, type tokens. Dark mode via `[data-theme="dark"]` or `prefers-color-scheme`.
3. **Layers.** Optional: `@layer reset, tokens, base, layout, components, utilities`. Keep utility use rare.
4. **Reset.** Minimal, opinionated. `*, *::before, *::after { box-sizing: border-box }`, `margin: 0`, `body { line-height: var(--lh-body) }`, image defaults.
5. **Layout primitives.** Use CSS Grid for 2D layout, Flex for 1D. `gap` over margins.
6. **Responsive.** Mobile-first `@media (min-width: …)`. Break at content, not at devices. Container queries for components that adapt to their slot.
7. **Logical properties.** `padding-inline`, `margin-block`, `border-inline-start` — future-proof for RTL.
8. **State + focus.** `:hover`, `:focus-visible`, `:active`, `:disabled`, `[aria-current]`. Never remove focus without replacing.
9. **Naming.** BEM-like or scoped by element/ARIA state. Avoid utility soup. Prefer semantic class names.
10. **Motion.** Wrap non-essential animations per `prompts/animation.md`.

## Outputs
- Complete stylesheet(s) that pair with the HTML draft.

## Guardrails
- No `!important` unless overriding a third-party rule.
- No px for typography sizes (use rem). Px allowed for borders and 1-off pixel details.
- No fixed pixel widths for main content areas.
- No `position: absolute` for layout that grid/flex handles.
- No color literals in components — reference variables.
