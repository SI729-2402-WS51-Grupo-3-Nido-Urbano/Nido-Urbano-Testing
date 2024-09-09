Feature: Envío de correos

  Escenario: Envío de correos tras el registro exitoso
    Given que un visitante se registra en la aplicación
    When el registro es exitoso
    Then el sistema debe enviar un correo de bienvenida
    And el correo contiene información básica sobre las funcionalidades de la aplicación

  Escenario: Envío de correos tras solicitud de información adicional
    Given que el visitante solicita información adicional
    When la solicitud es procesada
    Then el sistema debe enviar un correo con la información solicitada
    And el sistema muestra el mensaje “El correo fue enviado con éxito”