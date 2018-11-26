Feature: Registrar una jugada de un jugador

   Como jugador 
   Quiero que se pinta una caja
   Para saber a que jugador le pertenece

   Scenario: ver en pantalla la caja pintada
        Given visito la pagina de Ajustes
        When presiono "Jugar"
        And presiono la jugada "input[id='line1']"
        And presiono la jugada "input[id='line5']"
        And presiono la jugada "input[id='line6']"
        And presiono la jugada "input[id='line10']"
        Then deberia ver la caja pintada en el tablero "table input[id='box1']"