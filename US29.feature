Feature: Realizar pago en la plataforma web

  Scenario: Pago completado correctamente
    Given que el usuario ha ingresado la información de pago correcta
    And ha seleccionado la opción de "Pagar"
    When el usuario confirma la transacción
    Then el sistema debe procesar el pago de forma segura
    And mostrar un mensaje de confirmación de pago exitoso
    And enviar un recibo al correo electrónico del usuario con los detalles de la transacción

  Scenario: Error en el proceso de pago
    Given que el usuario intenta realizar un pago en la plataforma
    When el sistema detecta información incorrecta o el pago es rechazado
    Then el sistema debe mostrar un mensaje de error indicando la razón del fallo
    And proporcionar instrucciones para corregir la información o intentar con otro método de pago