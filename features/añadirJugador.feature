Feature: Añadir un jugador
    Como jugador
    Quiero añadir un jugador
    Para poder jugar DOTS and BOXES

    Scenario: ver en pantalla el formulario 
        Given visito la pagina Ajustes
        Then puedo ver el formulario con el titulo "Añade un jugador"
        
    Scenario: ver en pantalla el jugador añadido
        Given visito la pagina Ajustes
        Then puedo ver el formulario con el titulo "Añade un jugador"
        When ingreso el nombre "Natalia" para "nombre"
        And presiono el boton de "Guardar"
        Then puedo ver en pantalla el jugador "Natalia" que añadi

        When ingreso el nombre "Tatiana" para "nombre"
        And presiono el boton de "Guardar"
        Then puedo ver en pantalla el jugador "Tatiana" que añadi