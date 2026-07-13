# Documentation Layouts

## Purpose
Help readers find the answer, do the task, and understand why. Docs are a product surface.

## When to use which variant
- **01 Three-column (nav + content + toc)** — the standard for reference-heavy docs.
- **02 Two-column (nav + content)** — for guides and narrative docs.
- **03 Single-column tutorial** — for onboarding paths and walkthroughs.

## Universal rules
- Search is required. Not optional.
- Every page has a clear title, one-line summary, last-updated date, and prev/next.
- Code samples are copyable and syntax-highlighted with a language label.
- URLs are stable. Never break links without a redirect.

## Anti-patterns
- Docs that require login to read.
- Marketing content masquerading as documentation.
- Nav trees deeper than three levels.
- Content behind expandable accordions by default.

## Accessibility
- Nav is `<nav aria-label>`, current page `aria-current="page"`.
- Code blocks: `<pre><code class="language-…">`; not images.
- Anchor links on every heading; visible on hover, always focusable.

## Responsive
- Mobile: nav becomes a drawer; TOC becomes a jump-menu or is hidden.
- Desktop: three columns when TOC adds value.
