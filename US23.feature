Feature: Generación de contrato

    Escenario: Generación de contrato completada
        Given que el usuario ha completado todos los datos requeridos para el contrato de alquiler o venta
        When hace clic en el botón de "Generar contrato"
        Then el sistema debe generar el contrato en formato PDF, y enviar una copia al correo electrónico del usuario, confirmando que el documento está listo para su firma

    Escenario: Error por datos incompletos
        Given que el usuario no ha completado todos los datos requeridos para el contrato de alquiler o venta
        When hace clic en el botón de "Generar contrato"
        Then el sistema debe mostrar un mensaje de error indicando que faltan datos necesarios y resaltar los campos incompletos para que el usuario los complete
