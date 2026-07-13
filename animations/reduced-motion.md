# Animations — Reduced Motion

## Purpose
Respect users who signal `prefers-reduced-motion: reduce`. Reduce or replace motion; never remove essential feedback.

## Rules
- Wrap non-essential animation in:
  ```css
  @media (prefers-reduced-motion: no-preference) { … }
  ```
- Or, disable inside reduce:
  ```css
  @media (prefers-reduced-motion: reduce) {
    *, *::before, *::after { animation-duration: 0.01ms !important; transition-duration: 0.01ms !important; }
  }
  ```
- Replace, don't remove: essential state transitions (drawer open/close, dialog appearance) still communicate the change — just instantly.
- Video autoplay disabled under reduced motion.
- Parallax and scroll-linked transforms disabled.

## Rules
- Test with the OS setting enabled.
- Reduced motion is not "no animation" — it's "minimum required animation".

## Anti-patterns
- Ignoring the media query entirely.
- Removing focus feedback under reduced motion.
- Providing static UI that skips essential state transitions and confuses users.
