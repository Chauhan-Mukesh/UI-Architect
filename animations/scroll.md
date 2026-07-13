# Animations — Scroll

## Purpose
Reveal or transform content based on scroll position when it aids comprehension.

## Patterns
- Fade-and-rise on section entry (`opacity` 0→1, translateY 8→0, 400ms ease-out).
- Sticky nav condensation on scroll past hero.
- Progress bar for long-form articles.
- Scroll-linked hero background fade.

## Rules
- Use `IntersectionObserver`, never scroll event listeners.
- Reveal once (`unobserve` after first intersection) to keep motion honest.
- Reduced motion: show final state immediately without transition.
- Never scroll-jack; the user's scroll input must remain smooth.

## Anti-patterns
- Full-page parallax that drops frames.
- Content that requires scrolling twice for animation to complete.
- Scroll-triggered animations for elements above the initial fold.
