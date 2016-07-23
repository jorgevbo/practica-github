# language: es

Característica: Verificar asociacion de personas
  Feature que permite verificar que las asociaciones
  Padre - Hijo esten funcionando correctamente en el model Person

  Antecedentes:
    Dado los datos de una familia:
      | parent_name | child_name    |
      | Juan Perez  | Pedro Perez   |
      | Juan Perez  | Marta Perez   |
      | Juan Perez  | Rodrigo Perez |
      | Pedro Perez | Eduardo Perez |

  Escenario: Verificar hijos
    Cuando obtenemos a la persona "Juan Perez"
    Entonces esta persona debe tener "3" hijos

  Escenario: Verificar nietos
    Cuando obtenemos a la persona "Juan Perez"
    Entonces esta persona debe tener "1" nieto