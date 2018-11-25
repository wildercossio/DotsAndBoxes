
Feature: Mostrar el tablero

   Como jugador
   Quiero ver el tablero
   Para realizar mi jugada

   Scenario: Ver en pantalla el turno del jugador
        Given visito la pagina de Ajustes
        When presiono "Jugar"
        Then deberia ver el tablero "table"
        And deberia ver los puntos "*"