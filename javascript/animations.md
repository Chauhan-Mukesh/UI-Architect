# JavaScript — Animations

## Purpose
Use JS animation only when CSS can't do it. Keep animations off the main thread when possible.

## Rules
- Prefer CSS transitions and animations for state changes.
- Use the Web Animations API (`element.animate(...)`) when you need JS control.
- `requestAnimationFrame` for custom loops; never `setInterval` for animation.
- Respect `prefers-reduced-motion` — check `matchMedia('(prefers-reduced-motion: reduce)').matches` and short-circuit.
- Animate `transform` and `opacity` where possible; avoid animating `width`, `height`, `top`, `left`.

## Rules
- Cancel animations on element removal.
- Provide immediate final state for reduced-motion.
- Keep timing consistent with `--dur-*` and `--ease-*` tokens.

## Anti-patterns
- Scroll-jacking libraries that hijack native scroll.
- Parallax that drops frames on mid-range hardware.
- Animations that trigger layout on every frame.
