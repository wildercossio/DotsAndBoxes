Feature: cambiar el turno

   Como jugador 
   Quiero cambie el turno 
   Para avanzar en el juego

   Scenario: cambiar de turno
        Given visito la pagina de Ajustes
        When presiono "Jugar"
        #previamente se hizo una jugada en feature "registrar una jugada= turno de Natalia"
        #Natalia-Tatiana-Juan-Pablo
        And presiono la jugada "input[id='line5']"
        Then deberia ver el turno "Turno de: Tatiana" porque es el primer jugador 
