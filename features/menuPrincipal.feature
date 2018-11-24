Feature: ir a menu principal
    Como jugador
    Quiero ver el menu principal
    Para ver las opciones disponibles

    Scenario: ver en pantalla el titulo de la pagina
        Given visito la pagina Menu principal
        Then deberia ver el titulo "Menu principal"

    Scenario: ver en pantalla las opciones para el jugador
        Given visito la pagina Menu principal
        Then deberia ver la opcion "Jugar con amigos" 