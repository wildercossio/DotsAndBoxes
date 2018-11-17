Feature: Ajustes de partida
    Como jugador 
    Quiero ajustar mi partida
    Para divertirme

    Scenario: ver en pantalla la pagina de Ajustes 
        Given visito la pagina Menu principal y veo sus opciones 
        When presiono el boton "Jugar con amigos" 
        Then deberia ver el titulo "Ajustes" para configurar antes de iniciar una partida
        And deberia ver el formulario con el titulo "Añade un jugador"