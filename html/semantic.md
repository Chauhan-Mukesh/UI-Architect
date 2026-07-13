# HTML — Semantic Elements

## Purpose
Use the element that describes the content. Semantics unlock accessibility, SEO, and future maintainability for free.

## Rules
- Choose an element for meaning, not for style. Style is CSS's job.
- One `<h1>` per page. Heading levels never skip.
- `<article>` for self-contained content (post, product, comment).
- `<section>` for thematically grouped content that has a heading.
- `<nav>` for major navigation; label each with `aria-label`.
- `<aside>` for tangential content, not for sidebars-that-are-nav.
- `<figure>/<figcaption>` for images with captions, code samples, diagrams.
- `<time datetime>` for dates and times.
- `<address>` for contact info of the closest ancestor article/body.
- `<details>/<summary>` for progressive disclosure without JS.
- `<dialog>` for modal dialogs.
- `<mark>` for highlighted text (search hits, quotes).
- `<abbr title>` for abbreviations expanded in the title.
- `<blockquote>` + `<cite>` for external quotations.
- Lists (`<ul>`, `<ol>`, `<dl>`) for genuinely list-shaped content.

## Anti-patterns
- `<div>` where `<button>`, `<a>`, `<nav>`, `<article>`, or `<section>` fits.
- `<h3>` used because "h2 was too big" — that's a CSS problem.
- `<section>` without a heading (use `<div>`).
- Every element on the page as `<div>` and `<span>`.
