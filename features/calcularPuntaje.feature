Feature: calcular puntaje de un jugador

   Como jugador 
   Quiero que el juego calcule el puntaje
   Para saber mi deztreza en el juego

   Scenario: ver en pantalla la caja pintada
        Given visito la pagina de Ajustes
        When presiono "Jugar"
        #jugada de Natalia
        And presiono la jugada "input[id='line1']"
        #jugada de Tatiana
        And presiono la jugada "input[id='line5']"
        #jugada de Juan
        And presiono la jugada "input[id='line6']"
        #jugada de Pablo
        And presiono la jugada "input[id='line10']"
        #como pablo marco la ultima linea de la caja el punto es suyo
        Then deberia ver el puntaje "Pablo:1"