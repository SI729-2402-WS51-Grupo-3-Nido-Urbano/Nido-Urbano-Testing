Feature: Ver citas reservadas

  Scenario: Visualización de citas reservadas
    Given el usuario está en su perfil
    When accede a la sección de citas reservadas
    Then se muestra una lista de todas las citas reservadas por el usuario

  Scenario: Sin citas reservadas
    Given el usuario está en su perfil
    When no tiene citas reservadas
    Then se muestra un mensaje indicando que no hay citas reservadas
