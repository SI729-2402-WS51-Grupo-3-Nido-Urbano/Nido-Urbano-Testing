Feature: Cancelación del pago

  Scenario: Pago cancelado correctamente
    Given que el usuario ha iniciado un pago pero decide cancelarlo antes de que se complete la transacción
    When el usuario selecciona la opción de "Cancelar pago" y confirma la cancelación
    Then el sistema debe detener el proceso de pago
    And mostrar un mensaje de confirmación de que el pago ha sido cancelado
    And enviar una notificación al usuario confirmando que la transacción no se ha realizado

  Scenario: Error al cancelar el pago
    Given que el usuario intenta cancelar un pago en curso
    When el sistema no puede detener el proceso de pago porque ya ha sido completado o hay un error en la cancelación
    Then el sistema debe mostrar un mensaje de error indicando que la cancelación no se pudo realizar
    And ofrecer opciones para contactar al soporte para resolver el problema
    And proporcionar detalles sobre el estado actual del pago