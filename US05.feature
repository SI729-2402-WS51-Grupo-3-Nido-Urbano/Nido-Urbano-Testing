Feature: Pestaña de ayuda al usuario

  Escenario: Acceso a preguntas frecuentes
    Given que un visitante quiere resolver sus dudas
    When el visitante hace clic en la pestaña "Centro de Ayuda"
    Then es dirigido al centro de ayuda
    And se proporcionan respuestas claras a preguntas frecuentes

  Escenario: Las preguntas frecuentes no resuelven todas las dudas
    Given que un visitante quiere resolver sus dudas
    When presiona la pestaña "Centro de Ayuda"
    And no encuentra la respuesta a sus dudas
    Then el sistema recomienda contactarse a través de correo electrónico o teléfono celular