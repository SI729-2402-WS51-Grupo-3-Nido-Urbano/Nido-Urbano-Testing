Feature: Agendar cita

  Scenario: Reserva exitosa de cita
    Given el usuario está en la página de detalles de la propiedad
    When selecciona una fecha y hora disponibles
    Then se guarda la cita en el sistema
    And se muestra un mensaje de confirmación

  Scenario: Error al reservar cita
    Given el usuario está en la página de detalles de la propiedad
    When intenta reservar una cita en una fecha y hora no disponibles
    Then se muestra un mensaje de error
    And no se guarda la cita

