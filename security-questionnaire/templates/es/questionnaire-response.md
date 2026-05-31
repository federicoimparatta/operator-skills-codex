# Respuesta a cuestionario de seguridad: [nombre del cliente o prospecto]

**Referencia del documento:** Título del cuestionario, versión, fuente.
**Respondente:** Nombre, rol, razón social.
**Contacto del revisor:** Contacto del lado del cliente para aclaraciones.
**Fecha:** Fecha.
**Confidencialidad:** Marcado, estado de NDA.

---

## 1. Resumen

Una página. Qué cubre esta respuesta. La postura de la compañía. Los frameworks en alcance. Entre tres y cinco gaps o roadmap items principales, declarados al principio.

## 2. Cobertura por framework

| Framework | Estado | Evidencia |
|---|---|---|
| SOC 2 Type II | Certificado, alcance X, reporte Y, auditor Z | Disponible bajo NDA |
| ISO 27001 | No certificado | No aplica |
| HIPAA | Covered entity, BAA disponible | Política y template de BAA adjuntos |

## 3. Matriz de respuestas

Una fila por pregunta. Incluir el texto de la pregunta tal cual o parafraseado de forma ajustada, incluso si el cliente solo envió un ID.

| ID | Pregunta | Respuesta | Evidencia | Control ref |
|---|---|---|---|---|
| Q-001 | ¿Se aplica MFA a todo acceso a producción? | Sí | Auth policy v3.2, forzada por SSO provider X. | CTRL-ACC-01 |
| Q-002 | ¿Se rotan las claves de encriptación anualmente? | Sí | Config de KMS, período de rotación 365 días. | CTRL-CRY-03 |
| Q-003 | ¿Hay un plan formal de respuesta a incidentes? | Sí | IR runbook v2.1, última prueba YYYY-MM. | CTRL-IR-01 |
| Q-004 | ¿Se hacen pentests anuales? | Roadmap | Planeado Q3 YYYY, proveedor seleccionado. Responsable: CISO. | CTRL-PT-01 |
| Q-005 | ¿Se segregan los datos del cliente por tenant? | Sí | Tenant ID aplicado a nivel row en DB, ver doc de arquitectura §4. | CTRL-DAT-02 |
| Q-006 | ¿Hay un reporte SOC 2 Type II disponible? | Sí | Reporte actual disponible bajo NDA. | N/A |

**Valores de respuesta:** Sí, No, Roadmap.

## 4. Declaración de gaps

Una subsección por gap declarado.

### G-01. [Nombre del control]

- **Gap.** Qué no está en lugar.
- **Por qué.** Etapa, prioridad, o aceptación de riesgo.
- **Mitigación.** Control compensatorio, cláusula contractual, o proceso en lugar.
- **Roadmap.** Fecha objetivo y responsable, o explícitamente "sin plan".

## 5. Aclaraciones abiertas

Preguntas que el cliente debería responder antes de cerrar. Una subsección por item.

### C-01. [Tema]

- **Nuestra lectura.** Cómo interpretamos la pregunta.
- **Por qué importa.** Qué cambia en la respuesta según la aclaración.
- **Interpretación propuesta.** Cómo proponemos responder si no hay aclaración.

## 6. Anexos

- A. Reporte SOC 2 Type II (bajo NDA).
- B. Política de seguridad de la información, versión actual.
- C. Política de privacidad.
- D. Template de BAA, si aplica.
- E. Diagrama de arquitectura, si aplica.
- F. Otros.
