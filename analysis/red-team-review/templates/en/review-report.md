# Red team review: [target]

**Reviewer:** Name and role.
**Target version:** Version or commit.
**Target owner:** Name of the person who will decide on findings.
**Date:** Date.

---

## 1. Scope and stakes

- **Target.** What is being reviewed.
- **Version.** Specific.
- **In scope.** Components, behaviors, interactions.
- **Out of scope.** What is not being touched.
- **Stakes.** What this target owns if it ships.

## 2. Assumptions the target depends on

- User assumption.
- Operational assumption.
- Environmental assumption.
- Trust assumption.
- Upstream assumption.

Each assumption is either a candidate finding or a boundary the review will not challenge.

## 3. Top findings (decision-changing)

The three findings most likely to change the decision, in full.

### F-01. [Short title]

- **Severity.** Critical.
- **Likelihood.** Likely.
- **Class.** Structural risk or bug.
- **How it breaks.** Specific sequence or condition.
- **Why it breaks.** Underlying assumption.
- **What happens then.** Consequence. Blast radius.
- **Current defenses.** What the design already does.
- **Why defenses are or are not enough.**
- **Proposed action.** Fix, mitigate, accept, or monitor. Owner. Effort range.

### F-02. […]

### F-03. […]

## 4. All other findings

Ordered by severity, then likelihood.

### F-04. [Short title]

Same structure as above.

### F-05. […]

## 5. No-finding classes

Classes walked with no finding worth raising. One line each.

- Correctness and logic. No finding.
- Concurrency. No finding.
- Compliance and legal. No finding.

## 6. Recommended decision

One paragraph. What the decision maker should do next, based on the findings.

- Ship as designed.
- Ship with named mitigations in place.
- Redesign the specific subsystem named in F-XX.
- Do not ship.

## 7. Appendices

- Source documents reviewed.
- Interview notes, if any.
- Prior reviews of adjacent systems.
