# Accessibility — WCAG 2.2 AA

## Purpose
WCAG 2.2 AA is the floor. Every generated page must meet it.

## Perceivable
- Every non-text content has a text alternative.
- Captions and transcripts for pre-recorded video.
- Color contrast: 4.5:1 body, 3:1 large / non-text.
- Text can resize to 200% without loss of content.
- Content works in portrait and landscape.

## Operable
- All functionality available from keyboard.
- No keyboard traps.
- Users can pause, stop, or hide moving content.
- Focus visible on every interactive element.
- Target size ≥ 24×24 CSS px (WCAG 2.2 SC 2.5.8).
- Skip-link to main content.

## Understandable
- Language of page declared (`<html lang>`).
- Language changes marked inline.
- Consistent navigation and consistent identification.
- Error identification and suggestion.
- Help available where accepting user input.

## Robust
- Valid, semantic HTML.
- ARIA used correctly; native semantics preferred.
- Status messages announced without focus change.
