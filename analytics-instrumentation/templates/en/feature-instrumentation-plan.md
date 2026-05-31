# Instrumentation plan: [Feature name]

**Owner:** Name and role.
**PRD:** Link.
**Analytics tool:** Name.
**Last updated:** Date.

---

## 1. Questions this data must answer

Plain language. Three to six questions, ordered by importance. Each question has a named consumer.

1. Question. Who asks.
2. Question. Who asks.

## 2. Events

One subsection per event. Actions first, raw events after.

### `event_name_here`

- **Layer.** Action or raw event.
- **Description.** One sentence in plain language.
- **Fires when.** The exact condition.
- **Fires where.** Client, server, or both, with reasoning.
- **Deduplication.** How we guarantee it fires once per real occurrence.
- **Properties.**

| Name | Type | Required | Enum values | Notes |
|---|---|---|---|---|
| `user_id` | string | yes |  | pseudonymous |
| `plan` | enum | yes | free, starter, pro, enterprise |  |
| `source` | enum | yes | web, mobile, api |  |

- **Consumer.** Dashboard or funnel that uses this event.
- **Owner.** Person responsible for the downstream use.

## 3. Funnels

One subsection per funnel.

### [Funnel name]

- **Steps.** Ordered list of action event names.
- **Window.** Max time between first and last step.
- **Primary conversion.** The headline number.
- **Breakdown dimensions.** Properties used to slice the funnel.

## 4. Cohorts

One subsection per cohort.

### [Cohort name]

- **Entry condition.** Action and window.
- **Exit condition.** When a user leaves the cohort, if ever.

## 5. QA plan

- Test environment and dataset.
- Scenarios to walk through, including negative cases.
- Verification checklist.
- Sign-off by analytics owner.

## 6. PII policy

- Properties classified as PII.
- Systems allowed to receive them.
- Retention window.
- Deviations from company policy, if any.

## 7. Change policy

How this plan is revised. Where the canonical version lives. Who reviews changes.
