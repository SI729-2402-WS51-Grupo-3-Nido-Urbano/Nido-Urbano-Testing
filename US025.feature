Feature: Revisión y confirmación de datos de contrato

    Escenario: Datos del contrato revisados y confirmados
        Given que el usuario ha recibido una notificación para revisar los datos del contrato
        When el usuario revisa todos los campos del contrato y los confirma como correctos
        Then el sistema debe registrar la confirmación del usuario y permitir avanzar al paso de firma del contrato

    Escenario: Error en los datos del contrato
        Given que el usuario está revisando los datos del contrato
        When el usuario detecta un error o inconsistencia en los datos y selecciona la opción de "Solicitar corrección"
        Then el sistema debe notificar a la otra parte sobre la solicitud de corrección, bloquear el proceso de firma y permitir la edición de los datos antes de proceder nuevamente a la confirmación
