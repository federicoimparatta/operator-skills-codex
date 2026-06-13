# Heuristic set

The ten heuristics the audit scores findings against. Nielsen's set, restated in this repo's voice. Used in step 3 (classify findings by heuristic). Each finding gets one primary tag from this list, with a second tag allowed. For each: what a violation looks like, and the direction the fix takes. The fix direction is a heading, not a solution. The audit still owes a specific ticket.

---

## 1. Visibility of system status

- Violation: the user acts and the product gives no sign it heard them. A button that does nothing visible. A save with no confirmation. A long operation with no progress.
- Fix direction: signal state, progress, and outcome for every action, within the latency the user will tolerate.

## 2. Match to the real world

- Violation: the product speaks in system terms, not the user's. Error codes, internal jargon, a flow ordered by the database instead of the task.
- Fix direction: use the words and order the user already has in their head for this task.

## 3. User control and freedom

- Violation: the user gets somewhere they did not mean to and cannot get out. No back, no cancel, no undo. A wizard that traps.
- Fix direction: give a clearly marked exit from every state, and an undo for anything reversible.

## 4. Consistency and standards

- Violation: the same concept looks or behaves differently across the product. Two names for one thing. A control that means one action here and another there.
- Fix direction: one concept, one pattern, one name, everywhere. Follow the platform convention before inventing one.

## 5. Error prevention

- Violation: the design lets the user make a mistake it could have blocked. A destructive action with no guard. A form that accepts input it will later reject.
- Fix direction: remove the conditions that cause the error. Constrain input, confirm the irreversible, disable the impossible.

## 6. Recognition over recall

- Violation: the user has to remember information from a prior screen to act on this one. A code to copy, a setting to recall, options hidden until summoned.
- Fix direction: keep the needed information and actions visible at the point of use, so the user recognizes rather than remembers.

## 7. Flexibility and efficiency

- Violation: every user is forced through the beginner path. No shortcuts, no defaults, no way for a frequent user to move fast.
- Fix direction: serve the novice path by default and add accelerators (shortcuts, saved state, sensible defaults) that the expert can reach without slowing the novice.

## 8. Minimalist design

- Violation: the screen carries more than the decision needs. Competing calls to action, decorative noise, information the user cannot act on.
- Fix direction: show what the user needs to decide and act, and move or cut the rest. Every element earns its place.

## 9. Help users recover from errors

- Violation: an error message states that something failed without saying what, why, or what to do next. A red box with a stack trace. A dead end.
- Fix direction: name the problem in plain language, say what caused it, and offer the next action that fixes it.

## 10. Help and documentation

- Violation: the user is stuck and the only help is absent, buried, or written for a different audience. No inline guidance where the task gets hard.
- Fix direction: put task-specific help where the user gets stuck, short enough to read in place. The best help is a design that needs none.

---

## Scoring note

A heuristic violation is not yet a finding. A finding pairs the violation with a user moment, evidence, and a user-outcome cost (audit method step 5). A heuristic tag without an observed user moment is a checklist drop, which this skill rejects.
