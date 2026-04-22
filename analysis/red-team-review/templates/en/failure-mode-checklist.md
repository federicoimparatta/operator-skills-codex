# Failure mode checklist

A systematic walk the reviewer does during the review. Not a deliverable. Findings are lifted from here into `review-report.md`.

---

## Correctness and logic

- [ ] Off-by-one errors.
- [ ] Missing edge cases at boundaries.
- [ ] State machines with unreachable or sticky states.
- [ ] Assumptions about ordering.
- [ ] Assumptions about idempotency.

## Concurrency

- [ ] Race conditions on shared state.
- [ ] Double-submit on user actions.
- [ ] Retry amplification on transient errors.
- [ ] Deadlocks or starvation.
- [ ] Clock skew across nodes.

## Adversarial input

- [ ] Malformed input accepted.
- [ ] Oversize input accepted.
- [ ] Injection: SQL, shell, prompt, template.
- [ ] Path traversal.
- [ ] Encoding tricks.
- [ ] Rate limits bypassable.

## Trust boundaries

- [ ] Data crossing from untrusted to trusted zones unvalidated.
- [ ] Privilege escalation paths.
- [ ] Authorization checks missing or inconsistent.
- [ ] Implicit trust between services.

## Agent and LLM-specific

- [ ] Prompt injection via user or document content.
- [ ] Tool misuse: wrong tool for the input.
- [ ] Context smuggling via long context.
- [ ] Jailbreaks via role manipulation.
- [ ] Hallucinated tool calls or IDs.
- [ ] Infinite loops.
- [ ] Over-delegation to the model for authority it should not have.

## Cost model

- [ ] Per-request cost bounded.
- [ ] Noisy neighbor effects on shared resources.
- [ ] Ways to inflate usage without value.
- [ ] Ways to saturate concurrency.

## Blast radius

- [ ] When this fails, what else fails.
- [ ] Regional failure containment.
- [ ] Tenant isolation on failure.
- [ ] Data class containment.

## Observability

- [ ] Each failure mode has a signal.
- [ ] Signal lands in a dashboard with an owner.
- [ ] Signal is alertable, not just graphable.

## Rollback and recovery

- [ ] Rollback path exists.
- [ ] Rollback tested.
- [ ] Time to recover is measured or estimated.
- [ ] Partial failures recover cleanly.

## Operational

- [ ] Runbook exists for each likely failure.
- [ ] On-call knows where to look.
- [ ] Key-person risk identified.
- [ ] Ownership of each surface is written.

## Compliance and legal

- [ ] Regulatory exposure in the failure modes.
- [ ] Data residency respected.
- [ ] Audit log survives the failure.

## Social and human

- [ ] User communication plan under failure.
- [ ] Support exposure and load.
- [ ] Trust consequences after recovery.
