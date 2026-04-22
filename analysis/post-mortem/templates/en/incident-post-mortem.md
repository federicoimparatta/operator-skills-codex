# Incident post-mortem: [incident ID or name]

**Severity:** SEV-1, SEV-2, SEV-3, or custom.
**Facilitator:** Name and role.
**Date of incident:** Date.
**Date of retro:** Date.
**Attendees:** Names and roles.

---

## 1. Summary

One paragraph in plain language. What broke, who was affected, how long, what the recovery was.

## 2. Scope

- **What happened.** Short, clear.
- **When.** Start and end timestamps with timezone.
- **Who was affected.** Customers, internal users, partners. Numbers.
- **What services or systems were involved.**
- **External attention.** Press, regulator, large customer escalation, if any.

## 3. Timeline

Only facts, time-ordered, attributed.

| Time (UTC) | Event | Source |
|---|---|---|
| 14:02 | Error rate on service X rises above alert threshold. | Monitoring |
| 14:04 | On-call engineer acknowledges page. | PagerDuty |
| 14:07 | Engineer identifies recent deploy as likely cause. | Slack #incidents |
| 14:09 | Rollback initiated. | Deploy logs |
| 14:12 | Rollback completes. Error rate returns to normal. | Monitoring |
| 14:14 | Incident declared resolved. | Slack #incidents |
| 14:30 | Customer communications sent. | Status page update |

## 4. Detection, response, recovery

- **Time to detection.** From event to alert.
- **Time to acknowledgement.** From alert to human.
- **Time to mitigation.** From alert to user-visible improvement.
- **Time to resolution.** From alert to all-green.
- **Customer impact during the window.** Requests failed, revenue lost, users affected.

## 5. Contributing factors

Three to seven. Each framed as a condition, not a name.

1. **Condition.** Why it contributed.
2. **Condition.** Why it contributed.
3. **Condition.** Why it contributed.

## 6. What worked

- Detection: what fired fast and accurately.
- Response: behaviors that limited damage.
- Recovery: patterns that got the system back.
- Communication: where the team, customers, and leadership were aligned.

## 7. What did not

- Detection gaps.
- Response gaps.
- Recovery gaps.
- Communication gaps.
- Decision gaps.

## 8. Action items

Every contributing factor gets at least one, or an explicit accept.

| ID | Action | Owner | Due | Verification | Kill criterion |
|---|---|---|---|---|---|
| A-01 | Add staging smoke test for config path Y. | Name | Date | PR merged, test runs in CI. | Team decides this path is retired. |
| A-02 | Update runbook for service X with the new rollback steps. | Name | Date | Runbook linked from on-call handbook. |  |

## 9. Structural or cultural signals

- Signal. What it suggests. Who should act.

## 10. Documentation

- Runbook to create.
- Runbook to update.
- Policy to revise.
- Architecture note.

## 11. Distribution and revisit

- **Audience.** Who must read.
- **Channel.** Where this lives.
- **Revisit date.** When the team confirms action items landed.

## 12. Appendix

- Links to logs, dashboards, customer tickets.
- Full Slack thread if relevant.
- Raw metrics snapshots.
