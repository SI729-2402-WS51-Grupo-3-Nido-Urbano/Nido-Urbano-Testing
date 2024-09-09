Feature: Pestaña "Contacto"

  Escenario: Acceso exitoso a la pestaña "Contacto"
    Given que un visitante quiere enviar consultas
    When el visitante hace clic en la pestaña "Contacto"
    And tiene acceso a internet
    Then es dirigido a la página de contacto
    And se muestra un formulario para enviar consultas

  Escenario: Acceso denegado a la pestaña "Contacto"
    Given que un visitante quiere enviar consultas
    When el visitante hace clic en la pestaña "Contacto"
    And no dispone de acceso a internet
    Then no puede ver el contenido de la página de contacto
    And su navegador le informa que no se pudo encontrar la dirección IP