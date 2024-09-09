Feature: Pestaña "Sobre"

  Escenario: Acceso exitoso a la pestaña "Sobre"
    Given que un visitante quiere conocer más sobre la organización
    When el visitante hace clic en la pestaña "Sobre"
    And tiene acceso a internet
    Then es dirigido a la página con información sobre la organización
    And la página contiene la misión, visión y valores de la aplicación

  Escenario: Acceso denegado a la pestaña "Sobre"
    Given que un visitante quiere conocer más sobre la organización
    When presiona la pestaña "Sobre"
    And no tiene acceso a internet
    Then no puede visualizar el contenido de la página
    And su navegador le informa que no está conectado a internet