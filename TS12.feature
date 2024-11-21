Feature: Negociación de Términos de Contrato

    Escenario: Propuesta enviada correctamente
        Given que un usuario desea negociar los términos de un contrato
        When envía una propuesta de cambio mediante una solicitud PUT
        And los cambios propuestos son válidos y completos
        Then el servidor responde con un código 200 (OK)
        And confirma que la propuesta fue enviada al otro usuario para su revisión.

    Escenario: Error al intentar enviar una propuesta
        Given que un usuario intenta negociar términos con información incorrecta o incompleta
        When intenta enviar la propuesta mediante una solicitud PUT
        Then el servidor responde con un código 400 (Bad Request)
        And muestra un mensaje indicando los errores o campos incorrectos.