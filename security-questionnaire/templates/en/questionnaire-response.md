# Security questionnaire response: [customer or prospect name]

**Document reference:** Questionnaire title, version, source.
**Respondent:** Name, role, legal entity.
**Reviewer contact:** Customer-side contact for clarifications.
**Date:** Date.
**Confidentiality:** Marking, NDA status.

---

## 1. Summary

One page. What this response covers. The posture of the company. The frameworks in scope. Three to five headline gaps or roadmap items disclosed up front.

## 2. Framework coverage

| Framework | Status | Evidence |
|---|---|---|
| SOC 2 Type II | Certified, scope X, report Y, auditor Z | Available under NDA |
| ISO 27001 | Not certified | Not applicable |
| HIPAA | Covered entity, BAA available | Policy and BAA template attached |

## 3. Response matrix

One row per question. Include the question text verbatim or tightly paraphrased, even if the customer only sent an ID.

| ID | Question | Response | Evidence | Control ref |
|---|---|---|---|---|
| Q-001 | Is MFA enforced for all production access. | Yes | Auth policy v3.2, enforced via SSO provider X. | CTRL-ACC-01 |
| Q-002 | Are encryption keys rotated annually. | Yes | KMS config, rotation period 365 days. | CTRL-CRY-03 |
| Q-003 | Is a formal incident response plan in place. | Yes | IR runbook v2.1, last tested YYYY-MM. | CTRL-IR-01 |
| Q-004 | Are penetration tests conducted annually. | Roadmap | Planned Q3 YYYY, vendor selected. Owner: CISO. | CTRL-PT-01 |
| Q-005 | Is customer data segregated per tenant. | Yes | Tenant ID enforced at DB row level, see architecture doc §4. | CTRL-DAT-02 |
| Q-006 | Is a SOC 2 Type II report available. | Yes | Current report available under NDA. | N/A |

**Response values:** Yes, No, Roadmap.

## 4. Gap disclosures

One subsection per disclosed gap.

### G-01. [Control name]

- **Gap.** What is not in place.
- **Why.** Stage, priority, or risk acceptance.
- **Mitigation.** Compensating control, contract language, or process in place.
- **Roadmap.** Target date and owner, or explicit "no plan".

## 5. Open clarifications

Questions the customer should answer before we finalize. One subsection per item.

### C-01. [Topic]

- **Our understanding.** How we read the question.
- **Why it matters.** What changes in the response based on the answer.
- **Proposed interpretation.** How we propose to answer if no clarification is provided.

## 6. Attachments

- A. SOC 2 Type II report (under NDA).
- B. Information security policy, current version.
- C. Privacy policy.
- D. BAA template, if applicable.
- E. Architecture diagram, if applicable.
- F. Other.
