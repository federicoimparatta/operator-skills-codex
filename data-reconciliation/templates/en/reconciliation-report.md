# Reconciliation: [metric name]

**Triggered by:** Reason this reconciliation was requested.
**Owner:** Name and role.
**Status:** In progress, root cause found, fix in flight, closed.
**Date:** Date.

---

## 1. Disagreement

- **Metric.** What is being compared.
- **Source A.** Name, query or view.
- **Source B.** Name, query or view.
- **Window.** Exact start and end timestamps with timezone.
- **Scope.** What is in and out.
- **Value A.** Number.
- **Value B.** Number.
- **Gap.** Absolute. Relative.

## 2. Schema comparison

| Aspect | Source A | Source B | Match |
|---|---|---|---|
| Column names | `user_id, amount_cents` | `uid, gross_amount` | mapped |
| Types | int, int | text, numeric | cast on B |
| Units | cents | dollars with decimals | different |
| Grain | one row per event | one row per invoice | different |

## 3. Time comparison

| Aspect | Source A | Source B |
|---|---|---|
| Timezone | UTC | account-local |
| Window predicate | `created_at >= '2026-03-01' and created_at < '2026-04-01'` | `posted_date between '2026-03-01' and '2026-03-31'` |
| Cutoff timestamp | queried 2026-04-02 10:00 UTC | queried 2026-04-01 18:00 local |
| Freshness | 15 min | 24 hr |

## 4. Definition comparison

### Source A

Plain language: "Every successful charge event, counted once per idempotency key, in USD cents."

- Entity counted: charge event.
- Implicit filters: excludes test-mode, excludes `amount = 0`.
- Deduplication: by idempotency key.
- Aggregation: sum of `amount_cents`.

### Source B

Plain language: "Every invoice line item marked posted, in account-local currency."

- Entity counted: invoice line item.
- Implicit filters: excludes voided invoices, excludes internal tenants.
- Deduplication: none explicit.
- Aggregation: sum of `gross_amount`.

### Drift

- A counts charges; B counts invoice lines. Different entities.
- A excludes test-mode; B excludes voided and internal.
- A uses UTC; B uses account-local.
- A uses idempotency dedup; B does not dedup.

## 5. Sample comparison

Small identifiable set pulled from each source.

- Records in A not in B. Count. Reason.
- Records in B not in A. Count. Reason.
- Records in both. Count. Matching values.

## 6. Root cause

One sentence.

Example: "The sources report different entities. A counts charges, B counts invoice line items. The ratio should be close but not equal."

## 7. Fix

Pick one and write the action.

- **Align definitions.** What changes, on which side, by whom, by when.
- **Declare source of truth.** Which source is canonical. How the other is labeled or deprecated.
- **Accept tolerance.** Named tolerance. Reason it does not affect decisions. Review cadence.
- **Fix upstream bug.** Ticket ID. Owner. Target.

## 8. Communications

- Who is notified.
- What they are told.
- Whether dashboards are tagged or annotated.

## 9. Filed definition

Linked to the reusable `definition-diff.md` entry.
