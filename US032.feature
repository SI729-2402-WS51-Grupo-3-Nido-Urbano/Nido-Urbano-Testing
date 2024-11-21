Feature: Editar mi comentario publicado

  Scenario: Se agrega el comentario correctamente
    Given el usuario ha publicado un comentario acerca de un inmueble
    And desea corregir algún error o modificar su opinión, 
    When el usuario selecciona la opción de "Editar", realiza los cambios necesarios
    And guarda el comentario actualizado,
    Then el sistema debe guardar los cambios
    And refleja la nueva versión del comentario en la lista visible para otros usuarios.

  Scenario: Error al agregar el comentario
    Given el usuario intenta editar su comentario publicado,
    When ocurre un problema durante el proceso de edición (por ejemplo, problemas de conexión o validación de datos),
    Then el sistema debe mostrar un mensaje de error indicando que no se pudo guardar la edición.
