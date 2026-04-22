# Post-mortem de incidente: [ID o nombre del incidente]

**Severidad:** SEV-1, SEV-2, SEV-3, o custom.
**Facilitador:** Nombre y rol.
**Fecha del incidente:** Fecha.
**Fecha de la retro:** Fecha.
**Participantes:** Nombres y roles.

---

## 1. Resumen

Un párrafo en lenguaje plano. Qué rompió, a quién afectó, por cuánto tiempo, cómo fue la recuperación.

## 2. Alcance

- **Qué pasó.** Corto, claro.
- **Cuándo.** Timestamps de inicio y fin, con timezone.
- **A quién afectó.** Clientes, usuarios internos, partners. Números.
- **Qué servicios o sistemas estuvieron involucrados.**
- **Atención externa.** Prensa, regulador, escalamiento de cliente grande, si hubo.

## 3. Timeline

Solo hechos, ordenados por tiempo, atribuidos.

| Hora (UTC) | Evento | Fuente |
|---|---|---|
| 14:02 | La tasa de error del servicio X sube por encima del umbral de alerta. | Monitoreo |
| 14:04 | El engineer de on-call reconoce el page. | PagerDuty |
| 14:07 | Engineer identifica el deploy reciente como causa probable. | Slack #incidents |
| 14:09 | Rollback iniciado. | Logs de deploy |
| 14:12 | Rollback completo. La tasa de error vuelve a normal. | Monitoreo |
| 14:14 | Incidente declarado resuelto. | Slack #incidents |
| 14:30 | Comunicación al cliente enviada. | Update en status page |

## 4. Detección, respuesta, recuperación

- **Tiempo a detección.** Del evento a la alerta.
- **Tiempo a acknowledgement.** De la alerta al humano.
- **Tiempo a mitigación.** De la alerta a mejora visible al usuario.
- **Tiempo a resolución.** De la alerta a todo en verde.
- **Impacto al cliente durante la ventana.** Requests fallidos, ingresos perdidos, usuarios afectados.

## 5. Factores contribuyentes

Entre tres y siete. Cada uno formulado como condición, no como nombre.

1. **Condición.** Por qué contribuyó.
2. **Condición.** Por qué contribuyó.
3. **Condición.** Por qué contribuyó.

## 6. Qué funcionó

- Detección: qué disparó rápido y con precisión.
- Respuesta: comportamientos que limitaron el daño.
- Recuperación: patrones que devolvieron el sistema.
- Comunicación: dónde el equipo, los clientes, y leadership estuvieron alineados.

## 7. Qué no funcionó

- Gaps de detección.
- Gaps de respuesta.
- Gaps de recuperación.
- Gaps de comunicación.
- Gaps de decisión.

## 8. Action items

Cada factor contribuyente se lleva al menos un action item, o un accept explícito.

| ID | Acción | Responsable | Fecha | Verificación | Criterio de kill |
|---|---|---|---|---|---|
| A-01 | Agregar smoke test en staging para el path de config Y. | Nombre | Fecha | PR mergeado, test corre en CI. | El equipo decide que este path queda retirado. |
| A-02 | Actualizar el runbook del servicio X con los nuevos pasos de rollback. | Nombre | Fecha | Runbook linkeado desde el handbook de on-call. |  |

## 9. Señales estructurales o culturales

- Señal. Qué sugiere. Quién debería actuar.

## 10. Documentación

- Runbook a crear.
- Runbook a actualizar.
- Política a revisar.
- Nota de arquitectura.

## 11. Distribución y revisita

- **Audiencia.** Quién tiene que leerlo.
- **Canal.** Dónde vive.
- **Fecha de revisita.** Cuándo el equipo confirma que los action items aterrizaron.

## 12. Anexo

- Links a logs, dashboards, tickets de cliente.
- Thread completo de Slack si es relevante.
- Snapshots crudos de métricas.
