Feature: Cierre de contrato

    Escenario: Cierre de contrato completado
        Given que todas las obligaciones del contrato han sido cumplidas por ambas partes
        When el usuario selecciona la opción de "Cerrar contrato" y confirma la finalización del acuerdo
        Then el sistema debe cambiar el estado del contrato a "Cerrado", notificar a ambas partes sobre el cierre oficial y registrar el cierre en el historial de transacciones

    Escenario: Error al cerrar el contrato
        Given que el usuario intenta cerrar el contrato
        When hay obligaciones pendientes o disputas no resueltas asociadas al contrato
        Then el sistema debe mostrar un mensaje de error indicando las razones por las que no se puede cerrar el contrato y ofrecer opciones para resolver las obligaciones pendientes o las disputas
