# CSS — Variables (Tokens)

## Purpose
Custom properties are the single source of truth for design values. Change once; propagate everywhere.

## Rules
- Emit all tokens on `:root`.
- Theme overrides on `[data-theme="dark"]` or `@media (prefers-color-scheme: dark)`.
- Token categories:
  - Color: role-based (`--color-bg`, `--color-text`, `--color-primary`, `--color-primary-contrast`, etc.).
  - Spacing: scale-based (`--space-1` through `--space-10`).
  - Type: `--font-sans`, `--font-mono`, `--size-*`, `--lh-*`, `--weight-*`.
  - Radius: `--radius-sm`, `--radius-md`, `--radius-lg`, `--radius-full`.
  - Shadow: `--shadow-sm`, `--shadow-md`, `--shadow-lg`.
  - Motion: `--ease-*`, `--dur-*`.
- Components reference tokens; never hardcode literals.
- Compute variants from tokens (`hsl(from var(--color-primary) h s calc(l - 10%))`).

## Anti-patterns
- Tokens named after values (`--red-500`) used in components — leak of implementation into semantics.
- Duplicating tokens in JS and CSS unless serialization is required.
- Overriding tokens locally to change component behavior (add a component-scoped token instead).
