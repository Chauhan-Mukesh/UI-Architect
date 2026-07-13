# Accessibility Focus

## Goal
Focus state and focus movement must always communicate interaction context.

## Requirements
- Visible, high-contrast focus indicator on all interactive controls.
- Focus is moved intentionally after major UI state changes.
- Dialogs move focus into modal context and restore on close.
- No focus loss on dynamic updates.

## Common failures
- Removing browser outline without replacement.
- Returning focus to unrelated elements after modal close.
