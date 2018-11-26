Feature: Registrar una jugada de un jugador

   Como jugador 
   Quiero que se registre mi juagada
   Para avanzar en el juego

   Scenario: hacer click en una linea de trazos
        Given visito la pagina de Ajustes
        When presiono "Jugar"
        And es el "Turno de: Natalia"
        And presiono la jugada "input[id='line1']"
        Then deberia ver la linea dibujada en el tablero "table input[id='continuosline1']"
        Then deberia ver que el turno es del siguiente jugador "Turno de: Tatiana"