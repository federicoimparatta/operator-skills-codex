# Brief de roadmap: [área de producto o portafolio]

**Owner:** Nombre y rol.
**Ventana:** Trimestre, semestre, u horizonte nombrado.
**Última actualización:** Fecha.
**Próxima revisión:** Fecha.

---

## 1. Narrativa

Entre dos y cuatro párrafos. Qué creemos del producto a partir de la data. Qué temas importan más y por qué. Qué dejamos afuera de forma deliberada en esta ventana, y por qué.

## 2. Evidencia

| Fuente | Mide | Frescura | Nivel de confianza | Sesgo conocido |
|---|---|---|---|---|
| Product analytics | Flujos de eventos, funnels | diaria | alto | mobile sub-reportado |
| Tickets de soporte | Temas de fricción | semanal | medio | sesgo de supervivencia |
| Data financiera | Revenue, margen | cierre mensual | alto | lag por cohorte |
| Notas de entrevistas | Temas cualitativos | continuo | medio | N=18, sesgo a EE.UU. |

## 3. Temas

Una subsección por tema.

### T-01. [Nombre del tema]

- **Problema.** Una oración.
- **Señales.**
  - Señal. Fuente.
  - Señal. Fuente.
  - Señal. Fuente.
- **Escala.** Usuarios, revenue, frecuencia.
- **Hipótesis actual.** Qué creemos que está generando las señales.
- **Apuestas candidatas.** `B-01`, `B-02`.

## 4. Apuestas

Ver `bet-card.md` para las tarjetas detalladas. Tabla resumen acá:

| ID | Tema | Resumen de hipótesis | Impacto | Incertidumbre | Costo | Responsable |
|---|---|---|---|---|---|---|
| B-01 | T-01 | Un onboarding guiado sube la activación a 7 días. | Alto | Alta | Bajo | PM-A |
| B-02 | T-02 | Rate limits por tenant bajan churn por ruido vecino. | Medio | Baja | Medio | PM-B |
| B-03 | T-03 | Página de resumen de billing baja el volumen de soporte por preguntas de factura. | Bajo | Baja | Bajo | PM-C |

## 5. Secuencia

Por equipo o por ventana.

### Equipo A

| Ventana | Apuesta | Estado | Chequeo de kill |
|---|---|---|---|
| Semanas 1 a 4 | B-01 (validación) | Comprometido | Semana 3 |
| Semanas 5 a 10 | B-01 (build, si validó) | Condicional | Semana 10 |
| Semanas 11 a 12 | Próximo tema a elegir | Abierto |  |

### Equipo B

| Ventana | Apuesta | Estado | Chequeo de kill |
|---|---|---|---|
| Semanas 1 a 8 | B-02 | Comprometido | Semana 6 |
| Semanas 9 a 12 | B-03 | Comprometido | Semana 12 |

## 6. Dependencias y distribución de riesgo

- **Dependencias.** B-01 depende de que el evento de analytics X se envíe para la semana 2.
- **Infra compartida.** Ninguna.
- **Chequeo de concentración.** Esta ventana tiene una apuesta de alta incertidumbre y dos de baja. Aceptable.

## 7. Cadencia de revisión

- **Cadencia.** Revisión mensual con data fresca.
- **Trigger.** Una validación falla. El volumen de soporte cambia de categoría. El churn se mueve fuera de tolerancia.
- **Responsable.** Quién decide el cambio de secuencia.
- **Comunicación.** Canal, audiencia, tiempo de aviso.

## 8. Preguntas abiertas

Lista con responsable y deadline.

- Pregunta. Responsable. Deadline.
