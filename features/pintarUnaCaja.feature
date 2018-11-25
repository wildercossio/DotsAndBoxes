Feature: Registrar una jugada de un jugador

   Como jugador 
   Quiero que se registre mi juagada
   Para avanzar en el juego

   Scenario: ver en pantalla la caja pintada
        Given visito la pagina de Ajustes
        When presiono "Jugar"
        And presiono la jugada "input[id='line1']"
        And presiono la jugada "input[id='line5']"
        And presiono la jugada "input[id='line6']"
        And presiono la jugada "input[id='line10']"
        Then deberia ver la caja pintada en el tablero "input[id='box1']"