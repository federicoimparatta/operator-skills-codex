# Sesión de triage: [área], [fecha]

**Triagers:** Nombres.
**Ventana de la cola:** Desde fecha a fecha.
**Fuente de la cola:** Proyecto de Linear, board de Jira, repo de GitHub, etc.

---

## 1. Conteos

| Clasificación | Cantidad | Acción |
|---|---|---|
| Bug | n | scored abajo |
| Feature | n | scored abajo |
| Ruido | n | cerrado |
| Duplicado | n | cerrado, linkeado |
| Ya arreglado | n | cerrado con referencia |
| No es nuestro | n | reasignado o cerrado |

## 2. Bugs y features, con score

| ID | Título | Clase | Impacto | Certeza | Costo | Disposición | Responsable | Notas |
|---|---|---|---|---|---|---|---|---|
| L-1234 | Checkout falla en Safari iOS | bug | alto | confirmado | medio | tomar ahora | Eng-A |  |
| L-1235 | Agregar dark mode en settings | feature | bajo | guess | medio | decline |  | decline redactado |
| L-1236 | Flow de refund sin paso de confirmación | bug | medio | likely | chico | tomar después | Eng-B |  |

## 3. Secuencia para el equipo

Ordenado por responsable, por ventana.

### Ahora

- Responsable. Tickets. Dependencias.

### Después

- Responsable. Tickets. Dependencias.

## 4. Declines redactados

Uno por ticket declinado. Ver template `decline-message.md`.

- L-1235. Redactado. Listo para postear.

## 5. Park list

Abiertos pero no agendados. Cada entrada incluye la condición que lo saca del park.

- L-1240. Parkeado. Saldría de park si vemos 3 o más reportes en Q3.

## 6. Patrones observados

- Patrón. Qué sugiere. Próximo paso.
- Patrón. Qué sugiere. Próximo paso.

## 7. Plan de comunicación

- Notificación al equipo: canal, hora, formato.
- Respuestas a reporters: posteadas en el ticket, por quién, para cuándo.
- Notas a stakeholders: nombres específicos que necesitan contacto directo.
