# [Feature name]

**Owner:** Name and role. Single person.
**Status:** Draft, in review, approved, building, shipped, paused, killed.
**Last updated:** Date.
**Target ship:** Date or quarter. If unknown, say so.

---

## Problem

Tight paragraph that answers:

- Who feels it. A specific user type.
- When they feel it. A moment, frequency, or trigger.
- What they do today. The current workaround or resignation.
- What that costs. Time, revenue, churn, support load, or strategic gap.

## Hypothesis

One sentence:

> If we ship **X** for **user Y**, we expect **metric Z** to move by **roughly W**, because **reason R**.

## Evidence

What we know and how we know it.

- Interviews, surveys, session recordings.
- Dashboards and queries, with links.
- Prior experiments and their outcomes.
- Support tickets or sales objections.

Mark each bullet as **validated** or **inferred**.

## Users and personas

Who is this for, in order of importance. Include segment size where known. Include the user's adjacent actors, only if they affect the feature: approver, observer, consumer of output.

## Scope

### In

Outcomes users can notice. Phrased as "user can", "system does", "admin sees".

### Out

What we are choosing not to build now, with a one-line reason per item.

### Not ever

What we believe is wrong for this feature, not just deprioritized.

## User flows

One flow per primary scenario. Describe the sequence as user actions and system responses. Include the unhappy paths that matter: empty state, permission denied, network failure, concurrent edit.

## Acceptance criteria

Numbered list. Each item is user-observable. "User receives email within 5 minutes of event X" is a criterion. Internal implementation notes belong below, not here.

1. Criterion.
2. Criterion.

## Instrumentation

Written before the feature ships.

- **Events.** Names and when they fire.
- **Properties.** What each event carries.
- **Funnels.** Which sequence of events rolls up into what.
- **Dashboard.** Where the result is visible, and who owns it.

If the analytics taxonomy does not yet exist, write it here or link to its PRD.

## Dependencies and assumptions

- Upstream services, data sources, or teams we rely on.
- Assumptions we are making about volume, latency, permissions, or user behavior.

Mark each assumption as **verified** or **unverified**.

## Rollout plan

- **Audience.** Who sees it first. Percentage, cohort, or explicit list.
- **Feature flag.** Name and default state.
- **Ramp schedule.** Concrete dates or gates.
- **Reversibility.** How we turn it off. Estimated time to disable.
- **Comms.** Who tells users. What they are told. When.

## Kill criteria

- What would cause us to roll back.
- What would cause us to pause and rethink.
- How long we wait before checking.

## Open questions

Each with an owner and a deadline for resolution.

- Question 1. Owner. Deadline.
- Question 2. Owner. Deadline.

## Appendix

Links to prior versions, discovery notes, architecture diagrams, legal or compliance threads, and anything else that gives context but does not belong above.
