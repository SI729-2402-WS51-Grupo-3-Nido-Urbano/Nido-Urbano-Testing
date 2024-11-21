Feature: Ver comentario

  Scenario: Ve el comentario correctamente
    Given el usuario está navegando en la plataforma
    And desea ver los comentarios de otros usuarios sobre el inmueble del caul está interesado
    When el usuario se dezplaza hacia la parte de abajo del inmueble
    Then el sistema debe mostrar una lista de comentarios publicados por otros usuarios, permitiendo al usuario leerlos para obtener más información
    And tomar una decisión con mayor confianza.

  Scenario: Error al ver el comentario
    Given el usuario está intentando ver los comentarios de otros usuarios
    When ocurre un error en la carga de los comentarios (por ejemplo, problemas de conexión o falta de comentarios disponibles),
    Then el sistema debe mostrar un mensaje de error indicando que los comentarios no pueden ser cargados en ese momento
    And ofrecer la opción de reintentar la carga o volver a intentarlo más tarde.
