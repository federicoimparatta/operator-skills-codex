# Matriz de paridad: [origen] a [destino]

**Alcance:** Qué cubre esta matriz.
**Última actualización:** Fecha.

---

## Inventario

Una fila por objeto.

| ID | Objeto | Ubicación origen | Volumen | Responsable | Clasificación | Ubicación destino | Riesgo |
|---|---|---|---|---|---|---|---|
| M-001 | Tabla `users` | `legacy.users` | 2.1M filas, ~50 filas/min | Equipo de auth | Transformar | `identity.user` | Medio |
| M-002 | Tabla `sessions` | `legacy.sessions` | 300M filas, efímeras | Equipo de auth | Descartar |  | Bajo |
| M-003 | PDFs de facturas | Bucket S3 `legacy-invoices` | 1.4M archivos, ~2TB | Finanzas | Park | Mismo bucket, read-only | Bajo |

**Valores de clasificación:** migrar tal cual, transformar, descartar, park.
**Valores de riesgo:** bajo, medio, alto.

---

## Filas de paridad

Una subsección por objeto clasificado como migrar o transformar.

### M-001. `users` → `identity.user`

- **Forma en origen.**

| Campo | Tipo | Restricciones | Valores enum |
|---|---|---|---|
| `id` | uuid | pk |  |
| `email` | varchar(255) | unique, not null |  |
| `status` | varchar(32) | not null | active, disabled, pending |

- **Forma en destino.**

| Campo | Tipo | Restricciones | Valores enum |
|---|---|---|---|
| `id` | uuid | pk |  |
| `email` | citext | unique, not null |  |
| `state` | enum `user_state` | not null | active, inactive, invited |

- **Mapeo.** Campo por campo.

| Origen | Destino | Transformación |
|---|---|---|
| `id` | `id` | identidad |
| `email` | `email` | `lower()` |
| `status = 'active'` | `state = 'active'` |  |
| `status = 'disabled'` | `state = 'inactive'` |  |
| `status = 'pending'` | `state = 'invited'` |  |

- **Estrategia de identidad.** `id` se preserva tal cual.
- **Gaps.** En origen no hay equivalente a `state = 'invited'` para usuarios invitados legacy de más de 90 días; esos van a `inactive` con un evento de disclosure.

### M-002. `sessions` → descartado

- **Clasificación.** Descartar.
- **Razón.** Las sesiones en destino se emiten en el primer login post-cutover. No se migran datos del origen.
- **Impacto al usuario.** Todos los usuarios loguean de nuevo en el cutover. Documentado en el plan de comunicación.

---

## Preguntas abiertas de paridad

Lista, con responsable y deadline.

- Pregunta. Responsable. Deadline.
- Pregunta. Responsable. Deadline.
