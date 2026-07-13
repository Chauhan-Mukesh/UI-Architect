# CSS — Naming

## Purpose
Names are the API of your CSS. They should tell a reader what the class does, not what it looks like.

## Rules
- Prefer semantic names (`.card`, `.card__title`, `.card--featured`) over stylistic ones (`.blue-box`).
- BEM-ish is fine: `block__element--modifier`.
- Avoid utility soup when it obscures intent. A handful of utilities (`.sr-only`, `.container`, `.stack`) is fine.
- Scope by ARIA state when possible: `[aria-current="page"]`, `[aria-expanded="true"]` — no extra class needed.
- Prefixed data attributes for JS hooks (`data-js-*`) to separate style from behavior.

## Anti-patterns
- `.red`, `.big`, `.left` — stylistic names that lie the moment design changes.
- `.card1`, `.card2` — meaningless numbering.
- Deep BEM chains (`.card__body__row__col__item`).
- Overloading a class with too many modifier variants.
