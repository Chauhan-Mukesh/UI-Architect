# CSS — Layers

## Purpose
CSS `@layer` lets you declare specificity order deliberately so third-party or utility styles don't fight your components.

## Rules
- Establish layer order at the top of your entry stylesheet: `@layer reset, tokens, base, layout, components, utilities;`.
- Assign every rule to a layer. Unlayered rules win against layered rules — use that sparingly.
- Load third-party styles into their own layer so you can override them without `!important`.

## When to use
- Design systems consumed as CSS.
- Projects with multiple contributors where cascade order becomes contentious.

## When not to use
- Tiny sites where the cascade is already predictable.

## Anti-patterns
- Skipping layer order declaration (order becomes source-dependent).
- Layer names that don't describe purpose (`@layer stuff`).
