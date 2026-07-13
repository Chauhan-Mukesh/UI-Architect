# Checklist — Dashboard

## Navigation
- [ ] Sidebar or top nav consistent across pages
- [ ] Current location marked (`aria-current="page"`)
- [ ] Skip-link to main workspace
- [ ] Sidebar responsive: drawer on mobile, restorable rail on tablet

## Data
- [ ] Empty state designed with next-action hint
- [ ] Loading state uses skeleton for expected layout
- [ ] Error state actionable (retry, contact support)
- [ ] Tables use real `<table>` markup with sortable headers

## Actions
- [ ] Destructive actions have confirmation
- [ ] Bulk actions accessible by keyboard
- [ ] Toast feedback for background actions; inline feedback for form-level
- [ ] Undo where technically feasible

## Accessibility
- [ ] Landmarks and heading order correct
- [ ] Charts have text alternatives / data tables
- [ ] Focus management on route change
- [ ] Announcements via `aria-live` for asynchronous updates
