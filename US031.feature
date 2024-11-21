Feature: Agregar un comentario

  Scenario: Se agrega el comentario correctamente
    Given el usuario ha encontrado un inmueble
    And desea compartir su opinión,
    When el usuario escribe un comentario
    And selecciona la opción de "Enviar", 
    Then el sistema debe guardar el comentario 
    And y lo agrega a la lista visible para otros usuarios.

  Scenario: Error al agregar el comentario
    Given el usuario intenta agregar un comentario acerca de un inmueble
    When ocurre un problema al enviar el comentario (por ejemplo, problemas de conexión o validación de datos),
    Then el sistema debe mostrar un mensaje de error indicando que no se pudo agregar el comentario.
