# Timeline

## Purpose
Show sequence, progress, or history. Communicate order and duration.

## Structure
- Vertical or horizontal series of events, each with a timestamp/label and content.
- Semantics: `<ol>` for ordered events; each `<li>` contains time and description.

## Variants
- Vertical (default) — best for narrative depth.
- Horizontal — for compact overviews (roadmaps).
- Alternating (left/right) — editorial rhythm.

## States
- Past, current, upcoming — distinguished by color and label, not color alone.

## Mobile
- Vertical is default; horizontal timelines need horizontal scroll with visible indicator.

## Accessibility
- Each event's date in `<time datetime>`.
- Ordered semantics preserved.
- Current status announced ("current step") not just styled.

## Anti-patterns
- Horizontal timeline that requires drag to reveal past events with no indicator.
- Missing labels between events (only visual dots).
