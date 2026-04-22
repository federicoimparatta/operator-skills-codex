# Parity matrix: [source] to [target]

**Scope:** What this matrix covers.
**Last updated:** Date.

---

## Inventory

One row per object.

| ID | Object | Source location | Volume | Owner | Classification | Target location | Risk |
|---|---|---|---|---|---|---|---|
| M-001 | `users` table | `legacy.users` | 2.1M rows, ~50 rows/min | Auth team | Transform | `identity.user` | Medium |
| M-002 | `sessions` table | `legacy.sessions` | 300M rows, ephemeral | Auth team | Drop |  | Low |
| M-003 | Invoice PDFs | S3 bucket `legacy-invoices` | 1.4M files, ~2TB | Finance | Park | Same bucket, read-only | Low |

**Classification values:** migrate as-is, transform, drop, park.
**Risk values:** low, medium, high.

---

## Parity rows

One subsection per object classified as migrate or transform.

### M-001. `users` → `identity.user`

- **Source shape.**

| Field | Type | Constraints | Enum values |
|---|---|---|---|
| `id` | uuid | pk |  |
| `email` | varchar(255) | unique, not null |  |
| `status` | varchar(32) | not null | active, disabled, pending |

- **Target shape.**

| Field | Type | Constraints | Enum values |
|---|---|---|---|
| `id` | uuid | pk |  |
| `email` | citext | unique, not null |  |
| `state` | enum `user_state` | not null | active, inactive, invited |

- **Mapping.** Field by field.

| Source | Target | Transformation |
|---|---|---|
| `id` | `id` | identity |
| `email` | `email` | `lower()` |
| `status = 'active'` | `state = 'active'` |  |
| `status = 'disabled'` | `state = 'inactive'` |  |
| `status = 'pending'` | `state = 'invited'` |  |

- **Identity strategy.** `id` preserved as-is.
- **Gaps.** Source has no `state = 'invited'` equivalent for legacy invited users older than 90 days; those map to `inactive` with a disclosure event.

### M-002. `sessions` → dropped

- **Classification.** Drop.
- **Reason.** Sessions on target are issued at first post-cutover login. No source data migrated.
- **User impact.** All users log in again at cutover. Noted in comms plan.

---

## Open questions on parity

List, with owner and deadline.

- Question. Owner. Deadline.
- Question. Owner. Deadline.
