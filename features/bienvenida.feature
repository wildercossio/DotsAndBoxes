Feature: Bienvenida
    Como jugador 
    Quiero ver un mensaje de bienvenida en DOTS and BOXES
    Para sentirme a gusto desde el inicio

    Scenario: ver en pantalla el mensaje de bienvenida
        Given visito la pagina Bienvenida
        Then deberia ver el texto de "Bienvenido!!"
        And deberia ver el titulo de "DOTS and BOXES"
        And deberia ver la barra de carga ".progress-bar"
