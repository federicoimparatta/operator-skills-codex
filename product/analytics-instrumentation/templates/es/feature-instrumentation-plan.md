# Plan de instrumentación: [Nombre de la feature]

**Owner:** Nombre y rol.
**PRD:** Link.
**Herramienta de analytics:** Nombre.
**Última actualización:** Fecha.

---

## 1. Preguntas que esta data tiene que contestar

En lenguaje plano. Tres a seis preguntas, ordenadas por importancia. Cada pregunta con un consumidor nombrado.

1. Pregunta. Quién la hace.
2. Pregunta. Quién la hace.

## 2. Eventos

Una subsección por evento. Actions primero, raw events después.

### `nombre_del_evento`

- **Capa.** Action o raw event.
- **Descripción.** Una oración en lenguaje plano.
- **Se dispara cuando.** La condición exacta.
- **Se dispara en.** Cliente, servidor, o ambos, con justificación.
- **Deduplicación.** Cómo se garantiza que dispara una sola vez por ocurrencia real.
- **Propiedades.**

| Nombre | Tipo | Requerida | Valores enum | Notas |
|---|---|---|---|---|
| `user_id` | string | sí |  | pseudónimo |
| `plan` | enum | sí | free, starter, pro, enterprise |  |
| `source` | enum | sí | web, mobile, api |  |

- **Consumidor.** Dashboard o funnel que lo usa.
- **Responsable.** Persona responsable del uso downstream.

## 3. Funnels

Una subsección por funnel.

### [Nombre del funnel]

- **Pasos.** Lista ordenada de nombres de eventos action.
- **Ventana.** Tiempo máximo entre el primer y el último paso.
- **Conversión principal.** El número headline.
- **Dimensiones de breakdown.** Propiedades para cortar el funnel.

## 4. Cohortes

Una subsección por cohorte.

### [Nombre de la cohorte]

- **Condición de entrada.** Acción y ventana.
- **Condición de salida.** Cuándo un usuario sale de la cohorte, si alguna vez lo hace.

## 5. Plan de QA

- Entorno de test y dataset.
- Escenarios a recorrer, incluyendo casos negativos.
- Checklist de verificación.
- Firma del owner de analytics.

## 6. Política de PII

- Propiedades clasificadas como PII.
- Sistemas autorizados a recibirlas.
- Ventana de retención.
- Desvíos de la política general, si los hay.

## 7. Política de cambios

Cómo se revisa este plan. Dónde vive la versión canónica. Quién revisa cambios.
