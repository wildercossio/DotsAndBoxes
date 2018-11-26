Feature: cambiar el turno

   Como jugador 
   Quiero cambie el turno 
   Para avanzar en el juego

   Scenario: cambiar de turno
        Given visito la pagina de Ajustes
        When presiono "Jugar"
        And el turno deberia ser de "Turno de: Natalia"
        And presiono la jugada "input[id='line5']"
        Then deberia ver el turno "Turno de: Tatiana" porque es el primer jugador 
        
