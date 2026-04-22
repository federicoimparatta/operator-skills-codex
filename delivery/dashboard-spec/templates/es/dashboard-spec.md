# Spec de dashboard: [nombre del dashboard]

**Owner:** Nombre y rol.
**Usuario principal:** Rol o equipo.
**Estado:** Draft, en revisión, aprobado, construido, deprecado.
**Última actualización:** Fecha.

---

## 1. Decisión que soporta

- **Decisión.** Qué hace el usuario con estos datos.
- **Cadencia.** Cada cuánto se toma la decisión.
- **Costo de equivocarse.** Por qué importa la precisión.

## 2. Contexto del usuario

- **Usuario.** Rol o equipo.
- **Seniority o expertise.** Si necesita guardrails o poder directo.
- **Dónde está.** Contexto físico u organizacional.
- **Bajo qué presión.** Tiempo, responsabilidad, frecuencia.

## 3. Preguntas que responde

Entre cinco y quince preguntas, en orden de prioridad.

1. Pregunta uno.
2. Pregunta dos.
3. Pregunta tres.

## 4. Modelo de datos

| Pregunta | Fuente | Frescura | Métrica principal | Cardinalidad |
|---|---|---|---|---|
| Q1 | warehouse.account_usage | 5 min | porcentaje de cuota | ~100 filas |
| Q2 | api.refunds | tiempo real, 30 s | monto de refund | ~50 filas/hr |
| Q3 | warehouse.sla_log | diario | minutos perdidos | ~1K filas/mes |

## 5. Vistas

Ver `view-definition.md` para specs detallados por vista. Resumen:

- **V-01.** Nombre. Pregunta que responde. Tipo de layout.
- **V-02.** Nombre. Pregunta que responde. Tipo de layout.

## 6. Manejo de estados

Definido a nivel dashboard, sobrescribible a nivel vista.

- **Loading.** Filas skeleton, no spinners, en tablas.
- **Empty.** Qué se muestra cuando una query devuelve cero filas.
- **Error.** Qué se muestra ante falla, con un contacto.
- **Partial.** Qué se muestra cuando una fuente está up y otra está down.
- **Permission denied.** Qué ven los usuarios sin autorización.
- **Dataset grande.** Comportamiento cuando la cardinalidad excede los límites de display.

## 7. Roles y permisos

| Rol | Acceso a vistas | Acciones de escritura | Notas |
|---|---|---|---|
| admin | todas las vistas | todas las acciones | impersonation permitida |
| ops | todas las vistas | refund, disable | sin escrituras financieras |
| viewer | solo lectura | ninguna | scope por tenant |

- **Permisos row-level.** Cómo funciona el scoping entre roles.
- **Política de impersonation.** Cuándo, cómo, y qué se loguea.

## 8. Auditoría y logging

- **Audit de lectura.** Si se loguea el acceso a vistas.
- **Audit de escritura.** Schema del log de auditoría: actor, timestamp, target, acción, antes, después.
- **Retención.** Cuánto se guardan los logs.
- **Cadencia de revisión.** Quién revisa el audit y cuándo.

## 9. SLA y ownership

- **Target de uptime.** Porcentaje, con el método de monitoreo nombrado.
- **Target de frescura.** Por vista, donde sea más estricto que el default.
- **Owner on call.** Equipo y camino de escalamiento.
- **Política de cambios.** Quién puede agregar, deprecar, o cambiar una vista.

## 10. Preguntas abiertas

Lista con responsable y deadline.

- Pregunta. Responsable. Deadline.
