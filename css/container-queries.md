# CSS — Container Queries

## Purpose
Style components based on the size of their container, not the viewport. Enables truly reusable components.

## Rules
- Establish a containment context on the ancestor: `container-type: inline-size` (or `size`).
- Query with `@container (min-width: 40rem) { … }`.
- Name containers for clarity: `container-name: card` + `@container card (…)`.
- Use container queries for cards, sidebars, and any component that appears in multiple layout contexts.

## When to use
- A card that should show a row layout in wide slots, stacked in narrow.
- A sidebar module that should adapt to being placed in a wide vs narrow rail.

## When not to use
- Page-level layout — use media queries.
- Simple components that only appear once.

## Anti-patterns
- Nesting container queries into deep chains (hard to reason about).
- Overusing named containers (naming everything defeats the purpose).
