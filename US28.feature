Feature: Renovación del contrato

    Escenario: Renovación de contrato completada
        Given que el contrato está próximo a expirar
        When el usuario selecciona la opción de "Renovar contrato" y confirma los términos de renovación
        Then el sistema debe actualizar la fecha de vigencia del contrato, notificar a ambas partes sobre la renovación y generar un nuevo documento del contrato actualizado

    Escenario: Error al renovar el contrato
        Given que el usuario intenta renovar el contrato
        When existen cláusulas que impiden la renovación automática (por ejemplo, términos de duración máxima alcanzados)
        Then el sistema debe mostrar un mensaje de error explicando las razones por las que no se puede renovar el contrato y ofrecer opciones para contactar soporte o revisar los términos
