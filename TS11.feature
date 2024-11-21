Feature: Generación Automática de Contratos

    Escenario: Generación exitosa del contrato
        Given que ambas partes han llegado a un acuerdo
        When el usuario selecciona "Generar contrato" y hace la solicitud POST
        And los términos del acuerdo están completos y validados
        Then el servidor genera un contrato en formato PDF con los términos acordados
        And responde con un código 200 (OK) junto con el archivo descargable.

    Escenario: Error al intentar generar un contrato
        Given que faltan detalles importantes en el acuerdo
        When el usuario intenta generar el contrato
        Then el servidor responde con un código 400 (Bad Request)
        And muestra un mensaje indicando los campos que faltan para completar el contrato.