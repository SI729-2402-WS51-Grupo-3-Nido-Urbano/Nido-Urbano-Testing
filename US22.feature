Feature: Cancelar cita

  Scenario: Cancelación exitosa de cita
    Given el usuario está en la página de detalles de la cita reservada
    When confirma la cancelación de la cita
    Then la cita se cancela en el sistema
    And se muestra un mensaje de confirmación

  Scenario: Error al cancelar cita
    Given el usuario está en la página de detalles de la cita reservada
    When intenta cancelar la cita pero hay un error
    Then se muestra un mensaje de error
    And la cita no se cancela