# Tabs

## Purpose
Switch between related views of the same page without navigation.

## Structure
- Tab list (`role="tablist"`) with tabs (`role="tab"`), and panels (`role="tabpanel"`).
- Or, when tabs are actually distinct pages, use `<a>` links styled as tabs.

## Variants
- Horizontal underlined.
- Pills.
- Vertical (sidebar-like).
- Segmented control (for binary or 3-way choices).

## States
- Default, hover, focus-visible, selected, disabled.
- Selected uses `aria-selected="true"` and clear visual indicator.

## Mobile
- Horizontal scroll for many tabs; visible scroll affordance.
- Or convert to a dropdown/select on narrow viewports.

## Accessibility
- Tabs pattern: arrow keys switch tabs, Tab moves to panel.
- Each panel has `aria-labelledby` pointing to its tab id.
- If tabs are links (navigate between pages), do not use the tabs ARIA pattern.

## Anti-patterns
- Using tabs to hide content that should be scannable.
- Tabs that reload the page unnecessarily.
- Selected state depending on color only.
