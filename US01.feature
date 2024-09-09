Feature: Página de Inicio

  Escenario: Acceso exitoso a la página de inicio
    Given que el visitante desea ingresar al sitio web
    When selecciona el enlace
    And tiene acceso a internet
    Then es dirigido a la sección de inicio
    And el contenido de la página inicial es visible

  Escenario: Acceso denegado a la página de inicio
    Given que el visitante desea ingresar al sitio web
    When selecciona el enlace
    And no tiene acceso a internet
    Then el contenido de la sección inicial no es visible
    And su navegador le informa que no está conectado a internet