Feature: Mostrar un jugador

   Como jugador
   Quiero ver un jugador
   Para saber que estoy en la partida

   Scenario: Ver en pantalla los nombres de los jugadores 
        Given visito la pagina de Ajustes
        When presiono "Jugar"
        Then deberia ver el nombre "Natalia"
        And deberia ver el nombre "Tatiana"
        And deberia ver el nombre "Juan"
        And deberia ver el nombre "Pablo"