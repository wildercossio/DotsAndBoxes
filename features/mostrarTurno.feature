Feature: Mostrar un turno

   Como jugador
   Quiero ver el turno
   Para saber de quien es el turno

   Scenario: Ver en pantalla el turno del jugador
        Given visito la pagina de Ajustes
        When presiono "Jugar"
        Then deberia ver el turno "Turno de: Natalia" porque es el primer jugador