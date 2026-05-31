# Migration plan: [source] to [target]

**Owner:** Name and role.
**Approver:** Name who signs off on cutover.
**Last updated:** Date.
**Target cutover:** Date and time, with timezone.

---

## 1. Boundary

- **Source system.** Name, owner, version, known quirks.
- **Target system.** Name, owner, version, known quirks.
- **In scope.** Domains, modules, data ranges, user segments.
- **Out of scope.** What stays on source, permanently or temporarily.
- **Dual-run window.** Yes or no. If yes, for how long and why.

## 2. Inventory

See `parity-matrix.md`. Summary here:

- Objects to migrate as-is: count.
- Objects to transform: count.
- Objects to drop: count.
- Objects to park: count.

## 3. Cross-cutting decisions

One paragraph per decision.

- **Identity.** How user, account, and entity IDs translate.
- **Timestamps.** Timezone strategy.
- **Enums.** Mapping strategy for closed lists.
- **Nulls and missing.** How missing data on source is represented on target.
- **PII and access.** Re-authentication, re-consent, retention.
- **Soft-deleted records.** Whether they move, how they are represented.

## 4. Cutover runbook

Numbered steps.

| Step | Action | Owner | Expected duration | Abort on |
|---|---|---|---|---|
| 1 | Freeze writes on source for module X. | Name | 5 min | Source still accepting writes after 10 min. |
| 2 | Run bulk copy. | Name | 90 min | Error rate above 0.5%. |
| 3 | Run delta copy. | Name | 15 min | Delta grows instead of shrinks. |
| 4 | Run verification suite. | Name | 10 min | Any check fails. |
| 5 | Flip routing or DNS or flag. | Name | 2 min | Verification did not pass. |
| 6 | Monitor error and latency. | Name | 30 min | Error rate above named threshold. |

## 5. Rollback runbook

- **Rollback window.** How long after cutover rollback remains possible.
- **Rollback trigger.** Explicit signals that cause rollback.
- **Steps.** Numbered, like the cutover runbook.
- **Data reconciliation.** How writes to target during the partial cutover are handled.
- **Communications.** What users hear.

## 6. Success criteria

- **Functional parity.** List of flows or reports that must match, with tolerance.
- **Data parity.** Counts, sums, spot-checks.
- **Performance.** Latency, error rate, throughput.
- **Business metrics.** Revenue, activation, retention thresholds during cutover window.
- **Sign-off.** Named person who certifies success.

## 7. Long tail

- **Dual-read phase.** Scope and duration.
- **Source deprecation.** When it becomes read-only, then archived, then deleted.
- **Archive strategy.** Where source data lives for compliance or reference.
- **Training and support.** What internal users and support teams need.

## 8. Communications plan

- **Pre-cutover.** Audience, channel, message, timing.
- **During cutover.** Status page, incident channel, named comms owner.
- **Post-cutover.** Audience, channel, message.
- **Rollback, if triggered.** What is said, by whom.

## 9. Risks

- Risk. Likelihood. Impact. Mitigation. Owner.
- Risk. Likelihood. Impact. Mitigation. Owner.
