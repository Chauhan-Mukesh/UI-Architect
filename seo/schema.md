# SEO — Schema.org

## Purpose
Structured data makes content machine-readable for rich results and knowledge panels.

## Rules
- Use JSON-LD, not Microdata or RDFa.
- Place inside `<script type="application/ld+json">` in `<head>`.
- Validate with Schema.org and Google's Rich Results Test.

## Common types
- `Organization` — homepage, includes name, url, logo, sameAs (social).
- `WebSite` — homepage, includes potentialAction for site search.
- `BreadcrumbList` — pages with breadcrumbs.
- `Article` / `BlogPosting` — blog posts.
- `Product` / `Offer` — commerce.
- `Recipe`, `Event`, `Restaurant`, `LocalBusiness` — vertical-specific.
- `FAQPage` — FAQ sections (when the FAQ is visible on the page).
- `HowTo` — step-by-step tutorials.
- `SoftwareApplication` — SaaS product pages.

## Rules
- Structured data must reflect visible content — no hidden data.
- Fill required properties for the rich result you're targeting.
- Do not duplicate the same type across nested contexts unnecessarily.

## Anti-patterns
- FAQPage schema on marketing FAQs where questions are ad copy.
- Fake `Review` markup.
- Structured data pointing at pages that don't exist.
