# Testimonials

## Purpose
Provide social proof from real people. A testimonial without attribution is a slogan.

## Structure
- Quote (`<blockquote>`), attribution (`<cite>` or `<footer>`), optional photo/logo.
- Include name, role, and company.

## Variants
- Single featured quote.
- Grid of 2–6 quotes.
- Carousel (discouraged; if used, no autoplay).
- Video testimonial with transcript.

## States
- Default, hover (for interactive elements).
- Carousel navigation buttons: default, hover, focus-visible, disabled.

## Mobile
- Quotes stack; keep attribution intact.
- Video testimonial: play button clear, captions available.

## Accessibility
- Use `<blockquote>` for the quote and `<cite>` or a `<footer>` for attribution.
- Video has captions and a transcript link.
- Photos have meaningful alt (person's name/role).

## Anti-patterns
- Quotes without attribution.
- Stock photo attached to a real name.
- Autoplaying video testimonials.
- Carousel that loses testimonials on rotation.
