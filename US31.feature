Feature: Confirmación del pago

  Scenario: Confirmación de pago recibida
    Given que el usuario ha completado el proceso de pago en la plataforma
    When el sistema procesa el pago exitosamente
    Then el sistema debe mostrar una página de confirmación con los detalles del pago
    And enviar un correo electrónico al usuario con un recibo detallado

  Scenario: Confirmación de pago no recibida
    Given que el usuario ha completado el proceso de pago en la plataforma
    When el sistema encuentra un problema al procesar el pago
    Then el sistema debe mostrar un mensaje de error indicando que la confirmación del pago no se ha podido procesar
    And ofrecer opciones para intentar el pago nuevamente o contactar al soporte