Feature: Jugar

    Como jugador
    Quiero jugar a DOTS and BOXES
    Para divertirme
    
    Scenario: ver en pantalla el titulo de la pagina
        Given visito la pagina de Ajustes
        When presiono "Jugar"
        Then deberia ver el titulo que dice "Jugar con amigos"

    Scenario: ver en pantalla el nombre de todos los jugadores añadidos
        Given visito la pagina Jugar con amigos
        Then deberia ver en pantalla el nombre "Natalia"
        And deberia ver en pantalla el nombre "Tatiana"
        And deberia ver en pantalla el nombre "Juan"
        And deberia ver en pantalla el nombre "Pablo"

    
