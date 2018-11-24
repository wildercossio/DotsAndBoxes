Feature: Mostrar un jugador

   Como jugador
   Quiero ver mi puntaje
   Para saber mi destreza en el juego

   Scenario: Ver en pantalla el puntaje inicial 
        Given visito la pagina de Ajustes
        When presiono "Jugar"
        Then deberia ver el puntaje "0"
        