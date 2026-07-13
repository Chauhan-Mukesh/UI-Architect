# Admin Layouts

## Purpose
Support administrative work: managing entities, permissions, and settings. Prioritize control, not marketing polish.

## When to use which variant
- **01 CRUD list + detail** — the workhorse for managing entities.
- **02 Settings** — organized configuration panels.
- **03 Audit / activity log** — read-heavy with filters.

## Universal rules
- Destructive actions are visually distinct and require confirmation.
- Undo where feasible; typed confirmation for irreversible actions.
- Bulk actions are keyboard-accessible.
- Every list has a search and a way to sort.

## Anti-patterns
- Save button that saves the entire page silently.
- Delete without confirm.
- Mystery-meat icon-only toolbars.

## Accessibility
- Tables use real semantics.
- Confirmation dialogs manage focus.
- Toasts do not replace persistent error surfaces for form-level failures.

## Responsive
- Mobile: admin at reduced capability is acceptable; disclose it plainly.
- Desktop: full functionality; density can go up.
