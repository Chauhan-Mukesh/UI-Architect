# FAQ

## Purpose
Answer objections in the visitor's language before they abandon or ask.

## Structure
- Native `<details><summary>` for each question, or a scripted accordion with proper ARIA if styling requires it.
- Group by topic when the FAQ is long.

## Variants
- Single-column list — the default.
- Two-column grouped — for many items across categories.
- Search-filtered — for large FAQ pages (help centers).

## States
- Collapsed / expanded.
- Focus-visible on the summary/trigger.
- Optionally: one-open-at-a-time (accordion) or multi-open (independent).

## Mobile
- Full-width, tap target large.
- Question text wraps naturally — do not truncate.

## Accessibility
- Native `<details>` is preferred; it handles keyboard and semantics for free.
- If scripted: trigger is `<button>` with `aria-expanded` and `aria-controls`; panel has a matching id.
- Do not use FAQ markup that hides content from crawlers.

## Anti-patterns
- FAQ items that are marketing copy phrased as questions ("How do we make you successful?").
- Anchor scroll that hides the answer under a sticky header.
- All-caps question titles (illegible).
