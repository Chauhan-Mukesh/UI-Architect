# Prompt Module — HTML

## Purpose
Emit semantic, accessible, SEO-ready HTML. No divs where a semantic element exists.

## Inputs
- IA blueprint, design direction card.

## Steps
1. **Load only:** `html/semantic.md`, `html/landmarks.md`, `html/forms.md`, `html/aria.md`, `html/tables.md` (only if the page has tables).
2. **Document skeleton.** `<html lang>`, viewport meta, charset, `<title>`, meta description, favicon.
3. **Landmarks.** Exactly one `<header>`, `<main>`, `<footer>`. Sidebars are `<aside>`. Navigation is `<nav>` with `aria-label`.
4. **Heading order.** Single `<h1>`. Never skip levels. Section headings match IA priorities.
5. **Semantic elements.** `<article>`, `<section>`, `<figure>`, `<figcaption>`, `<time>`, `<address>`, `<details>/<summary>`, `<dialog>`, `<button>`, `<a>`. Never `<div onclick>`.
6. **Links vs buttons.** Navigate = `<a href>`. Act = `<button>`. Never style a link as a button and skip the semantic element.
7. **Forms.** Every input has a `<label for>`. Group with `<fieldset>/<legend>`. Use native input types. Add `autocomplete` values. Errors via `aria-describedby`. Load `html/forms.md`.
8. **Images.** `<img alt>` always. Decorative → `alt=""`. `width`/`height` set to prevent CLS. Use `<picture>` for art direction.
9. **ARIA.** Only where semantics are unavailable. Prefer native. If used, follow patterns in `html/aria.md`.
10. **Metadata.** Load `seo/metadata.md`, `seo/structured-data.md`, `seo/headings.md`. Include Open Graph, Twitter, JSON-LD as appropriate.

## Outputs
- Complete HTML document ready for CSS + JS phases.

## Guardrails
- Zero inline styles, zero inline `onclick`.
- No `role="button"` on a `<div>` if `<button>` fits.
- No `<h1>` skipping to `<h3>`.
- No `alt="image of X"` — describe or leave empty.
- No `target="_blank"` without `rel="noopener"`.
