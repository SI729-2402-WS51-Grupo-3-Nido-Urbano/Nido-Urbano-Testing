Feature: Negociación de contrato

    Escenario: Negociación de contrato completada con acuerdo
        Given que los usuarios han propuesto y revisado los términos del contrato
        When ambas partes aceptan los términos propuestos
        Then el sistema debe actualizar el contrato con los términos acordados y notificar a ambas partes que el contrato está listo para ser firmado

    Escenario: Negociación de contrato sin acuerdo
        Given que una de las partes no está de acuerdo con los términos propuestos
        When la parte rechaza los términos o no responde en un plazo definido
        Then el sistema debe enviar una notificación de rechazo o falta de respuesta a la otra parte y ofrecer opciones para renegociar o cancelar el contrato
