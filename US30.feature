Feature: Selección de método de pago

  Scenario: Método de pago seleccionado correctamente
    Given que el usuario ha accedido a la sección de métodos de pago en la plataforma
    When el usuario selecciona un método de pago preferido de la lista disponible
    And confirma su selección
    Then el sistema debe guardar el método de pago seleccionado como preferido para futuras transacciones
    And mostrar un mensaje de confirmación indicando que la selección ha sido exitosa

  Scenario: Error al seleccionar el método de pago
    Given que el usuario intenta seleccionar un método de pago preferido
    When el sistema detecta un problema con el método de pago (por ejemplo, el método seleccionado está vencido)
    Then el sistema debe mostrar un mensaje de error explicando la causa del problema
    And permitir al usuario elegir un método de pago alternativo o actualizar la información del método seleccionado