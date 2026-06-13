# Failure mode library

The categorized set the red-team walk scans against. Used in step 3 (walk the failure classes systematically). Each entry carries a one-line "what it looks like" and a one-line "what to ask". Absence of a finding in a category is still a result. Record it.

---

## Agent and LLM systems

- **Prompt injection.** Looks like: untrusted content (a web page, a doc, a tool result) carries instructions the agent then follows. Ask: which inputs reach the model unsanitized, and what can a hostile input make the agent do.
- **Tool-permission overreach.** Looks like: the agent holds write, delete, or spend access it never needs for the task. Ask: what is the smallest permission set that completes the task, and what is the blast radius of the current set.
- **Unbounded loops.** Looks like: a retry, plan, or self-call path with no iteration cap or budget. Ask: what stops this from running forever, and who pays for it.
- **Silent truncation.** Looks like: context, tool output, or a list is cut to fit a window and the model treats the partial as complete. Ask: where does data get dropped, and does the model know it was dropped.
- **Hallucinated citations.** Looks like: the output names a source, ID, or quote that does not exist. Ask: is every cited fact checked against a real record before it ships.
- **Missing human-in-the-loop on irreversible actions.** Looks like: the agent sends, pays, deletes, or publishes without a confirm gate. Ask: which actions cannot be undone, and which of those run without a human approving.
- **Over-delegation.** Looks like: the agent hands a high-stakes decision to a sub-agent or tool without checking the result. Ask: what does the agent accept on trust, and what happens when that trust is wrong.
- **Context smuggling.** Looks like: prior turns, system text, or secrets leak into a place a user or downstream system can read. Ask: what is in context that should never reach the output.

## Proposals and plans

- **Hidden single point of failure.** Looks like: one person, vendor, key, or service that the whole plan silently depends on. Ask: what happens the day that one thing is gone.
- **Unfunded dependency.** Looks like: the plan needs work from a team, budget, or system that has not agreed to provide it. Ask: who committed to this dependency, in writing, by when.
- **Optimistic timeline.** Looks like: estimates assume no rework, no review latency, and full availability. Ask: what is the estimate if the two riskiest steps each slip by half.
- **No rollback path.** Looks like: the plan describes how to ship but not how to undo. Ask: if this is wrong in production, what is the exact sequence to get back to the prior state.
- **Unstated assumption.** Looks like: a claim the plan treats as fact without naming it as an assumption. Ask: what has to be true for this to work, and which of those is unverified.
- **Success metric that cannot be measured.** Looks like: the goal is named but no instrument can read it. Ask: what query or dashboard reports this number, and does it exist yet.
- **Scope that only grows.** Looks like: every review adds, none cut. Ask: what is explicitly out of scope, and who agreed to leave it out.

## Architecture

- **No backpressure.** Looks like: a fast producer feeds a slow consumer with no queue limit or shed path. Ask: what happens when the consumer falls behind, and where does the backlog go.
- **Cache invalidation gap.** Looks like: a cache with no clear rule for when an entry is stale or evicted. Ask: when the source changes, how and when does the cache learn, and what does a reader see in between.
- **Retry storms.** Looks like: clients retry on failure with no jitter or backoff, so a blip becomes an outage. Ask: when the downstream returns errors, does retry traffic make it worse.
- **Missing idempotency.** Looks like: a write or message handler that double-applies when delivered twice. Ask: what happens if this request runs twice, and is there a key that makes the second run a no-op.
- **Unbounded fan-out.** Looks like: one request triggers N downstream calls where N is user-controlled. Ask: what is the largest N a single request can produce, and what does that do downstream.
- **Shared mutable state across tenants.** Looks like: one cache, counter, or buffer serving many customers without isolation. Ask: can one tenant's load or data reach another tenant.
- **No timeout on a remote call.** Looks like: a call that can hang forever, holding a connection or thread. Ask: what is the timeout on every external call, and what does the caller do when it fires.
