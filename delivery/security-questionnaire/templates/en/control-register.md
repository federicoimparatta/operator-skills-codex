# Control register

**Owner:** Name and role.
**Last reviewed:** Date.
**Review cadence:** Quarterly, after every major incident, or after any framework audit.

---

## Purpose

The single source of truth for how this company answers security and privacy questions. Every questionnaire answer is a pointer into this register.

## Control entries

One subsection per control.

### CTRL-ACC-01. MFA on production access

- **Domain.** Access management.
- **Status.** Operating.
- **Scope.** All production systems, all employees with production access.
- **Implementation.** Enforced via SSO provider X. Hardware-key option available, TOTP fallback allowed.
- **Evidence.** Auth policy v3.2. SSO provider config export on request. Monthly access review report.
- **Framework mappings.** SOC 2 CC6.1. ISO 27001 A.9.4.2. CIS 6.3.
- **Owner.** Security team.
- **Last tested.** Date.
- **Known gaps or exceptions.** None, or list with reasoning.

### CTRL-CRY-03. Encryption key rotation

- **Domain.** Cryptography.
- **Status.** Operating.
- **Scope.** All customer-data keys.
- **Implementation.** KMS auto-rotation, period 365 days.
- **Evidence.** KMS config. Rotation audit log.
- **Framework mappings.** SOC 2 CC6.7. ISO 27001 A.10.1.2.
- **Owner.** Platform team.
- **Last tested.** Date.

### CTRL-PT-01. Penetration testing

- **Domain.** Vulnerability management.
- **Status.** Roadmap.
- **Scope.** External-facing production systems.
- **Implementation target.** Annual external pentest, vendor X, starting Q3 YYYY.
- **Interim mitigation.** Continuous vulnerability scanning, internal red-team exercises twice a year.
- **Evidence.** Vendor contract (pending). Internal red-team reports, last YYYY-MM.
- **Owner.** CISO.
- **Target date.** Date.

## Cross-reference index

Mapping common questionnaire phrasings to control IDs.

| Common phrasing | Control ID |
|---|---|
| "Is MFA enforced for production" | CTRL-ACC-01 |
| "Are production credentials protected" | CTRL-ACC-01 |
| "Do you rotate encryption keys" | CTRL-CRY-03 |
| "Do you conduct penetration testing" | CTRL-PT-01 |

## Change log

- Date. Control ID. Change. Reviewer.
