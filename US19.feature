Feature: Disponibilidad de citas

  Scenario: Visualización de disponibilidad de citas
    Given el usuario está en la página de detalles de la propiedad
    When accede a la sección de reserva de citas
    Then se muestra un calendario con las fechas y horarios disponibles para reservar

  Scenario: Sin citas disponibles
    Given el usuario está en la página de detalles de la propiedad
    When accede a la sección de reserva de citas
    And la propiedad ya tiene citas reservadas para todo el mes
    Then se muestra un mensaje indicando que el usuario no tiene citas disponibles para esta propiedad