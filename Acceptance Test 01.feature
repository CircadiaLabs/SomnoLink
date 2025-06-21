Feature: US01 - Recomendaciones personalizadas antes de dormir

Como usuario que desea mejorar su calidad de sueño,
quiero recibir recomendaciones personalizadas antes de dormir,
para poder establecer mejores hábitos de descanso.

Scenario Outline: Recibir recomendaciones antes de dormir según perfil
  Given que el usuario ya completó su perfil y configuró su hora de dormir
  And el sistema tiene acceso a su cronotipo y nivel de estrés
  When el reloj del sistema marca <Hora de activación>
  Then la app envía una notificación con recomendaciones personalizadas

Example:
| Hora de dormir | Nivel de estrés | Cronotipo | Hora de activación |
|----------------|------------------|-----------|---------------------|
| 22:30          | Medio            | Vespertino| 22:00               |
| 23:00          | Alto             | Matutino  | 22:30               |
