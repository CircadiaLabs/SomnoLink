Feature: US02 - Alertas por patrones de sueño anormales

Como usuario que monitorea su descanso con SomnoLink,
quiero recibir alertas si mi sueño presenta irregularidades,
para poder tomar medidas correctivas a tiempo.

Scenario Outline: Detección de patrón anormal y alerta al usuario
  Given que el usuario lleva al menos 5 días de monitoreo
  And el sistema detecta una disminución en la calidad o duración del sueño
  When la variación supera el umbral definido por la app
  Then el usuario recibe una alerta con una recomendación correctiva
  And si el patrón se mantiene por más de 3 días, se sugiere contacto profesional

Examples:
| Día | Duración promedio previa | Duración detectada | Umbral | Recomendación |
|-----|---------------------------|---------------------|--------|----------------|
| 6   | 7.5 horas                 | 5.0 horas           | 25%    | Dormir antes y evitar pantallas |
| 7   | 6.8 horas                 | 4.5 horas           | 30%    | Practicar respiración guiada    |