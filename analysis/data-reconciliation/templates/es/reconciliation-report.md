# Reconciliación: [nombre de la métrica]

**Disparada por:** Razón por la que se pidió.
**Owner:** Nombre y rol.
**Estado:** En progreso, causa raíz encontrada, fix en vuelo, cerrada.
**Fecha:** Fecha.

---

## 1. Desacuerdo

- **Métrica.** Qué se está comparando.
- **Fuente A.** Nombre, query o vista.
- **Fuente B.** Nombre, query o vista.
- **Ventana.** Timestamps exactos de inicio y fin, con timezone.
- **Alcance.** Qué entra y qué no.
- **Valor A.** Número.
- **Valor B.** Número.
- **Gap.** Absoluto. Relativo.

## 2. Comparación de schema

| Aspecto | Fuente A | Fuente B | Coincide |
|---|---|---|---|
| Nombres de columnas | `user_id, amount_cents` | `uid, gross_amount` | mapeado |
| Tipos | int, int | text, numeric | cast en B |
| Unidades | centavos | dólares con decimales | diferente |
| Granularidad | una fila por evento | una fila por invoice | diferente |

## 3. Comparación de tiempo

| Aspecto | Fuente A | Fuente B |
|---|---|---|
| Timezone | UTC | local de la cuenta |
| Predicado de ventana | `created_at >= '2026-03-01' and created_at < '2026-04-01'` | `posted_date between '2026-03-01' and '2026-03-31'` |
| Timestamp de corte | consultado 2026-04-02 10:00 UTC | consultado 2026-04-01 18:00 local |
| Frescura | 15 min | 24 hr |

## 4. Comparación de definición

### Fuente A

En lenguaje plano: "Cada evento de charge exitoso, contado una vez por clave de idempotencia, en centavos de USD."

- Entidad contada: evento de charge.
- Filtros implícitos: excluye test-mode, excluye `amount = 0`.
- Deduplicación: por clave de idempotencia.
- Agregación: suma de `amount_cents`.

### Fuente B

En lenguaje plano: "Cada ítem de invoice marcado como posteado, en moneda local de la cuenta."

- Entidad contada: ítem de invoice.
- Filtros implícitos: excluye invoices anuladas, excluye tenants internos.
- Deduplicación: ninguna explícita.
- Agregación: suma de `gross_amount`.

### Drift

- A cuenta charges; B cuenta líneas de invoice. Entidades distintas.
- A excluye test-mode; B excluye anuladas e internas.
- A usa UTC; B usa local de la cuenta.
- A usa dedup por idempotencia; B no dedupa.

## 5. Comparación por muestra

Set pequeño identificable traído de cada fuente.

- Registros en A que no están en B. Cantidad. Razón.
- Registros en B que no están en A. Cantidad. Razón.
- Registros en ambas. Cantidad. Valores que coinciden.

## 6. Causa raíz

Una oración.

Ejemplo: "Las fuentes reportan entidades distintas. A cuenta charges, B cuenta líneas de invoice. El ratio debería ser cercano pero no igual."

## 7. Fix

Elegir una y escribir la acción.

- **Alinear definiciones.** Qué cambia, de qué lado, quién, para cuándo.
- **Declarar source of truth.** Qué fuente es canónica. Cómo se etiqueta o deprecia la otra.
- **Aceptar tolerancia.** Tolerancia nombrada. Razón por la que no afecta decisiones. Cadencia de revisión.
- **Arreglar bug upstream.** ID del ticket. Responsable. Fecha objetivo.

## 8. Comunicación

- Quién se entera.
- Qué se les dice.
- Si se etiquetan o anotan dashboards.

## 9. Definición archivada

Linkeada a la entrada reutilizable de `definition-diff.md`.
