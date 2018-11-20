Feature: Añadir un jugador
    Como jugador 
    Quiero ver la pagina de Jugar con amigos
    Para poder jugar 
        
    Scenario: registrar al menos 2 jugadores para que aparezca la opcion jugar y luego vea la pagina Jugar con amigos
        Given visito la pagina Ajustes y registre 2 judadores previamente
        When presiono el boton de la parte inferior "Jugar"
        Then puedo ver la pagina con el titulo "Jugar con amigos"

        And puedo ver en pantalla el jugador ingresado "Natalia"
        And puedo ver en pantalla el puntaje inicial de Natalia en "0"

        And puedo ver en pantalla el jugador ingresado "Tatiana"
        And puedo ver en pantalla el puntaje inicial de Tatiana en "0"

        And puedo ver en pantalla el jugador ingresado "Juan"
        And puedo ver en pantalla el puntaje inicial de Juan en "0"
        
        And puedo ver en pantalla el jugador ingresado "Pablo"
        And puedo ver en pantalla el puntaje inicial de Pablo en "0"
        And puedo ver en pantalla el turno "Turno de: Natalia"
        And puedo ver en pantalla el tablero "table"



        
       

