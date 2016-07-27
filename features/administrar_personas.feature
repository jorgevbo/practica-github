
Feature: Crear familia de personas
  Scenario: Crear un registro
    Given there are a person with called "Juan Perez Ejemplo"
    And the person has a child called "Juan Domingo Perez"
    Then "Juan Perez Ejemplo" is parent of "Juan Domingo Perez"
  Scenario: Verificar un registro hijo
    Given person with name "Juan Domingo Perez"
    Then his parent is "Juan Perez Ejemplo"