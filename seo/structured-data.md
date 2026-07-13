# SEO — Structured Data (Practice)

## Purpose
Concrete patterns for the structured data types most projects need.

## Article / BlogPosting
- `headline`, `datePublished`, `dateModified`, `author`, `image`, `publisher`.
- Ensure dates match visible `<time datetime>` elements.

## LocalBusiness / Restaurant
- `name`, `address` (PostalAddress), `telephone`, `openingHoursSpecification`, `servesCuisine`, `menu` (URL).
- Include `image` and `geo` (latitude/longitude) when known.

## Product
- `name`, `description`, `image`, `offers` (with `price`, `priceCurrency`, `availability`).
- `review` and `aggregateRating` only when reviews are real and visible.

## SoftwareApplication / SaaS
- `name`, `applicationCategory`, `operatingSystem`, `offers`, `aggregateRating` (if genuine).

## FAQPage
- Each `Question` with `acceptedAnswer` matching visible copy.
- Do not use for marketing FAQs.

## Anti-patterns
- Rich results markup on invisible or ad-copy content.
- Reviews without a real review source.
- Multiple LocalBusiness types on one page for the same business.
