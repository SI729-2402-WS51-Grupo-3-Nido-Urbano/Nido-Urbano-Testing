Feature: Cancelación de acuerdos

    Escenario: Acuerdo cancelado correctamente
        Given que el usuario desea cancelar un acuerdo vigente  
        When el usuario selecciona la opción de "Cancelar acuerdo" y confirma su decisión
        Then el sistema debe notificar a ambas partes sobre la cancelación, actualizar el estado del contrato a "Cancelado" y liberar a ambas partes de las obligaciones del contrato

    Escenario: Error al cancelar el acuerdo
        Given que el usuario intenta cancelar un acuerdo
        When existen restricciones contractuales o legales que impiden la cancelación (por ejemplo, penalidades o fechas límite pasadas)
        Then el sistema debe mostrar un mensaje de error explicando la razón por la cual no se puede cancelar el acuerdo y ofrecer opciones para contactar soporte o resolver las restricciones
