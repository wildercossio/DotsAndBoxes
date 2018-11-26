Feature: calcular puntaje de un jugador

   Como jugador 
   Quiero que el juego calcule el puntaje
   Para saber mi deztreza en el juego

   Scenario: ver en pantalla la caja pintada
        Given visito la pagina de Ajustes
        When presiono "Jugar"
        And presiono la jugada "input[id='line1']"
        And presiono la jugada "input[id='line5']"
        And presiono la jugada "input[id='line6']"
        And presiono la jugada "input[id='line10']"
        Then deberia ver el puntaje "Pablo:1"