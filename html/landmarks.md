# HTML — Landmarks

## Purpose
Landmarks let assistive tech jump between page regions. Every page has predictable landmarks.

## Required landmarks
- `<header>` — page or section header.
- `<main>` — the main content. Exactly one per page.
- `<footer>` — page footer.
- `<nav>` — navigation regions (label with `aria-label`).

## Optional landmarks
- `<aside>` — complementary content.
- `<section>` with `aria-labelledby` — becomes a region landmark when it has an accessible name.
- `<form>` with an accessible name — becomes a landmark.

## Rules
- One `<main>`. Exactly one.
- Label multiple `<nav>` regions to distinguish them ("Primary", "Footer", "Breadcrumb").
- Skip-link `<a href="#main-content">` at the top of the body.
- Avoid landmark-in-landmark unless intentional (e.g., `<aside>` inside `<article>`).

## Anti-patterns
- `<header>` inside every card (redefines page structure).
- `<main>` inside a route on an SPA without ensuring only one is active.
- Unlabeled `<nav>` elements — screen-reader users hear "navigation" repeated with no distinction.
