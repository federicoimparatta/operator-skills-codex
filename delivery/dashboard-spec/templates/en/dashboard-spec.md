# Dashboard spec: [dashboard name]

**Owner:** Name and role.
**Primary user:** Role or team.
**Status:** Draft, in review, approved, built, deprecated.
**Last updated:** Date.

---

## 1. Decision supported

- **Decision.** What the user does with this data.
- **Cadence.** How often the decision is made.
- **Cost of being wrong.** Why accuracy matters.

## 2. User context

- **User.** Role or team.
- **Seniority or expertise.** Guardrails or raw power.
- **Where they are.** Physical or organizational context.
- **Under what stress.** Time pressure, accountability, frequency.

## 3. Questions answered

Five to fifteen questions, in priority order.

1. Question one.
2. Question two.
3. Question three.

## 4. Data model

| Question | Source | Freshness | Primary metric | Cardinality |
|---|---|---|---|---|
| Q1 | warehouse.account_usage | 5 min | quota percent | ~100 rows |
| Q2 | api.refunds | real-time, 30 s | refund amount | ~50 rows/hr |
| Q3 | warehouse.sla_log | daily | minutes missed | ~1K rows/month |

## 5. Views

See `view-definition.md` for detailed per-view specs. Summary:

- **V-01.** Name. Question answered. Layout type.
- **V-02.** Name. Question answered. Layout type.

## 6. States handling

Specified at the dashboard level, overridable at the view level.

- **Loading.** Skeleton rows, not spinners, on tables.
- **Empty.** What is shown when a query returns no rows.
- **Error.** What is shown on failure, with a contact.
- **Partial.** What is shown when one source is up and another is down.
- **Permission denied.** What non-authorized users see.
- **Large dataset.** Behavior when cardinality exceeds display limits.

## 7. Roles and permissions

| Role | View access | Write actions | Notes |
|---|---|---|---|
| admin | all views | all actions | impersonation allowed |
| ops | all views | refund, disable | no financial writes |
| viewer | read-only | none | tenant-scoped |

- **Row-level permissions.** How scoping works across roles.
- **Impersonation policy.** When, how, and what is logged.

## 8. Audit and logging

- **Read audit.** Whether view access is logged.
- **Write audit.** Schema of the audit log: actor, timestamp, target, action, before, after.
- **Retention.** How long logs are kept.
- **Review cadence.** Who reviews the audit and when.

## 9. SLA and ownership

- **Uptime target.** Percentage, with the monitoring method named.
- **Freshness target.** Per-view, where tighter than the default.
- **Owner on call.** Team and escalation path.
- **Change policy.** Who can add, deprecate, or change a view.

## 10. Open questions

List with owner and deadline.

- Question. Owner. Deadline.
