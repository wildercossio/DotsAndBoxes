Feature: Añadir un jugador
    Como jugador
    Quiero añadir un jugador
    Para poder jugar DOTS and BOXES

    Scenario: veo en pantalla el titulo del formulario 
        Given visito la pagina Ajustes
        Then puedo ver el formulario con el titulo "Añade un jugador"
        
    Scenario: ingreso un primer jugador 
        Given visito la pagina Ajustes
        When ingreso el nombre "Natalia" para "nombre"
        And presiono el boton de "Guardar"
        Then puedo ver en pantalla el jugador "Natalia" que añadi

    Scenario: ingreso un segundo jugador
        Given visito la pagina Ajustes
        When ingreso el nombre "Tatiana" para "nombre"
        And presiono el boton de "Guardar"
        Then puedo ver en pantalla el jugador "Tatiana" que añadi
        
    Scenario: ingreso un tercer jugador
        Given visito la pagina Ajustes
        When ingreso el nombre "Juan" para "nombre"
        And presiono el boton de "Guardar"
        Then puedo ver en pantalla el jugador "Juan" que añadi

    Scenario: ingreso un cuarto jugador
        Given visito la pagina Ajustes
        When ingreso el nombre "Pablo" para "nombre"
        And presiono el boton de "Guardar"
        Then puedo ver en pantalla el jugador "Pablo" que añadi