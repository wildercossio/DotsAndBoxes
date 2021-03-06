require "./lib/Board"
require "./lib/Settings"
describe Board do

    before(:each) do
        @board=Board.new
        @settings=Settings.new
        @settings.constructor
    end
    it "Verificar que el ancho y el alto del tablero sea 0" do
        playWithPlayers(2) 
        @board.constructor(2,@settings)
        expect(@board.getHeight).to eq 0 
        expect(@board.getWidth).to eq 0
    end
    it "Verificar al inicio del juego, el turno sea del jugador A" do
        playWithPlayers(2) 
        @board.constructor(2,@settings)
        expect(@board.getTurn).to eq "A"
        expect(@board.getPlayerColor).to eq "background:#54ba9b;" #verde
    end
    it "Verificar que el numero de jugadores es el esperado" do
        numberPlayers=2
        playWithPlayers(numberPlayers)
        @board.constructor(numberPlayers,@settings)
        expect(@board.getNumberOfPlayers).to eq 2
    end
    it "Verificar que al generar el tablero, su ancho y alto sea el esperado" do
        playWithPlayers(2) 
        @board.constructor(2,@settings)
        @board.generateBoard(3,3)
        expect(@board.getHeight).to eq 3 
        expect(@board.getWidth).to eq 3
    end
    it "Verificar que se genero correctamente" do
        playWithPlayers(2) 
        @board.constructor(2,@settings)
        @board.generateBoard(3,3)
        expectedBoard=Array.new #lineas
        #en total 36 lineas de las cuales 12 son compartidas 36-12=24 lineas disponibles
        for i in(0..23)
            expectedBoard.push(i+1)
        end
        for i in(0..23)
            expect(@board.getLine(i+1)).to eq expectedBoard[i]
        end
    end
    it "Verificar que el tablero encuentre una linea existente" do
        playWithPlayers(2) 
        @board.constructor(2,@settings)
        @board.generateBoard(3,3)
        expect(@board.getLine(10)).to eq 10
    end
    it "Verificar que el tablero no encuentre una linea inexistente" do
        playWithPlayers(2) 
        @board.constructor(2,@settings)
        @board.generateBoard(3,3)
        expect(@board.getLine(1000)).to eq "not here"
    end
    it "Verificar que el tablero marque una linea existente" do
        playWithPlayers(2) 
        @board.constructor(2,@settings)
        @board.generateBoard(3,3)
        expect(@board.checkLine(10)).to eq true
    end
    it "Verificar que el tablero no marque una linea inexistente" do
        playWithPlayers(2) 
        @board.constructor(2,@settings)
        @board.generateBoard(3,3)
        expect(@board.checkLine(1000)).to eq false
    end
    it "Verificar que se eliminen todos los jugadores que interactuan con el tablero" do
        playWithPlayers(2) 
        @board.constructor(2,@settings)
        @board.generateBoard(3,3)
        expect(@board.deleteAllUsers).to eq true
    end

    it "Verificar que al jugar con 2 jugadores se cumpla el ciclo de turno" do
        #ciclo de turno a cumplir A-B-A
        playWithPlayers(2) 
        @board.constructor(2,@settings)
        expect(@board.getTurn).to eq "A"
        @board.nextPlayer
        expect(@board.getTurn).to eq "B"
        @board.nextPlayer
        expect(@board.getTurn).to eq "A"
    end
    it "Verificar que al jugar con 2 jugadores se cumpla el ciclo de turno" do
        #ciclo de turno a cumplir A-B-A
        playWithPlayers(2) 
        @board.constructor(2,@settings)
        expect(@board.getTurn).to eq "A"
        @board.nextPlayer
        expect(@board.getTurn).to eq "B"
        @board.nextPlayer
        expect(@board.getTurn).to eq "A"
    end
    it "Verificar que al jugar con 3 jugadores se cumpla el ciclo de turno" do
        #ciclo de turno a cumplir A-B-C-A
        playWithPlayers(3) 
        @board.constructor(3,@settings)
        expect(@board.getTurn).to eq "A"
        @board.nextPlayer
        expect(@board.getTurn).to eq "B"
        @board.nextPlayer
        expect(@board.getTurn).to eq "C"
        @board.nextPlayer
        expect(@board.getTurn).to eq "A"
    end
    it "Verificar que al jugar con 4 jugadores se cumpla el ciclo de turno" do
        #ciclo de turno a cumplir A-B-C-D-A
        playWithPlayers(4) 
        @board.constructor(4,@settings)
        expect(@board.getTurn).to eq "A"
        @board.nextPlayer
        expect(@board.getTurn).to eq "B"
        @board.nextPlayer
        expect(@board.getTurn).to eq "C"
        @board.nextPlayer
        expect(@board.getTurn).to eq "D"
        @board.nextPlayer
        expect(@board.getTurn).to eq "A"
    end

    it "Verificar que se guarde un nuevo turno" do
        playWithPlayers(2) 
        @board.constructor(2,@settings)
        expect(@board.setTurn("B")).to eq "B"
    end
    it "Verificar que el contenido de todas las cajas no esten pintadas" do
        playWithPlayers(2) 
        @board.constructor(2,@settings)
        @board.generateBoard(3,3)#total de cajas = 9
        for row in(0..2)
            for col in(0..2)
                expect(@board.getContent(row,col)).to eq ""
            end
        end
    end
    it "Verificar que todas las cajas esten pintadas,cuando todas las lineas del tablero estan marcadas" do
        playWithPlayers(2) 
        @board.constructor(2,@settings)
        @board.generateBoard(3,3)#total de cajas = 9
        #se marcan todas las lineas
        for i in(1..24)
            @board.checkLine(i)
        end
        @board.paintBoxes        
        #al estar marcadas todas las lineas, todas las cajas deberian estar pintadas
        green="background:#54ba9b;"
        for row in(0..2)
            for col in(0..2)
                expect(@board.getContent(row,col)).to eq green
            end
        end
    end
    
    it "Verificar que el puntaje de los jugadores se reinicie a 0" do
        playWithPlayers(4) 
        @board.constructor(4,@settings)
        @board.resetScore
        for i in(0..3)#son 4 jugadores
            expect(@board.getScoreOfPlayer(i)).to eq 0
        end
    end

    #metodos auxiliares
    def playWithPlayers(number)
        case number
        when 2
            player=Player.new
            player.constructor("Juan","background:#54ba9b;","A",0)
            @settings.addPlayer(player)
            player.constructor("Pedro","background:#ff637d;","B",0)
            @settings.addPlayer(player)
        when 3
            player=Player.new
            player.constructor("Juan","background:#54ba9b;","A",0)
            @settings.addPlayer(player)
            player.constructor("Pedro","background:#ff637d;","B",0)
            @settings.addPlayer(player)
            player.constructor("Carlos","background:#5473ba;","C",0)
            @settings.addPlayer(player)
        when 4
            player=Player.new
            player.constructor("Juan","background:#54ba9b;","A",0)
            @settings.addPlayer(player)
            player.constructor("Pedro","background:#ff637d;","B",0)
            @settings.addPlayer(player)
            player.constructor("Carlos","background:#5473ba;","C",0)
            @settings.addPlayer(player)
            player.constructor("Sergio","background:#ba54a6;","D",0)
            @settings.addPlayer(player)
        end
    end
       






    # it "Verificar que el tamaño inicial del tablero es 0 x 0" do
    #     @board=Board.new
    #     settings=Settings.new
    #     settings.constructor
    #     settings.addPlayer("Rosendo")
    #     settings.addPlayer("Benacio")
    #     @board.constructor(2,settings)

    #     expect(@board.getWidth).to eq 0
    #     expect(@board.getHeight).to eq 0
    # end

    # it "Obtener el numero de jugadores" do
    #     @board=Board.new
    #     settings=Settings.new
    #     settings.constructor
    #     settings.addPlayer("Rosendo")
    #     settings.addPlayer("Benacio")
    #     settings.addPlayer("Natalia")
    #     settings.addPlayer("Tatiana")
    #     @board.constructor(4,settings)
    #     expect(@board.getNumberOfPlayers).to eq 4
    # end
    # it "Generar matriz del tablero" do
    #     @board=Board.new
    #     settings=Settings.new
    #     settings.constructor
    #     settings.addPlayer("Rosendo")
    #     settings.addPlayer("Benacio")
    #     @board.constructor(2,settings)

    #     width=3
    #     height=3
    #     @board.generateBoard(width,height)
    #     expect(@board.getWidth).to eq 3
    #     expect(@board.getHeight).to eq 3
    #     #no supe como verificar que una matriz sea generada,por lo tanto solo compruebo 
    #     #que el tamaño sea en el que se definio
    # end
    # it "Buscar el valor de una linea existente en el tablero(matriz de cajas)" do
    #     @board=Board.new
    #     settings=Settings.new
    #     settings.constructor
    #     settings.addPlayer("Rosendo")
    #     settings.addPlayer("Benacio")
    #     @board.constructor(2,settings)

    #     width=3
    #     height=3
    #     @board.generateBoard(width,height)
    #     #como el tablero es de 3x3 entonces se tiene 9 cajas
    #     #entonces se tendria 9x4 =36 lineas 
    #     #entre las que 12 lineas comparten el mismo valor 
    #     #por tanto se tiene 24 lineas diferentes
    #     value=24
    #     expect(@board.getLine(value)).to eq 24
    # end
    # it "Buscar el valor de una linea inexistente en el tablero, deberia obtener 0 por no encontrarla" do
    #     @board=Board.new
    #     settings=Settings.new
    #     settings.constructor
    #     settings.addPlayer("Rosendo")
    #     settings.addPlayer("Benacio")
    #     @board.constructor(2,settings)

    #     width=3
    #     height=3
    #     @board.generateBoard(width,height)
    #     #como el tablero es de 3x3 entonces se tiene 9 cajas
    #     #entonces se tendria 9x4 =36 lineas 
    #     #entre las que 12 lineas comparten el mismo valor 
    #     #por tanto se tiene 24 lineas diferentes
    #     value=25#no existe
    #     expect(@board.getLine(value)).to eq "doesNotExist"
    # end
    # it "Cambiar de turno ciclo completo con 2 jugadores" do
    #     @board=Board.new
    #     settings=Settings.new
    #     settings.constructor
    #     settings.addPlayer("Rosendo")
    #     settings.addPlayer("Benacio")
    #     @board.constructor(2,settings)
    #     expect(@board.getTurn).to eq "A"
    #     #como inicialmente es el turno del jugador A ahora deberia ser de B
    #     @board.nextPlayer
    #     expect(@board.getTurn).to eq "B"
    #     #como ahora es turno de jugador B deberia cambiar a jugador A
    #     @board.nextPlayer
    #     expect(@board.getTurn).to eq "A"
    # end

    # it "Cambiar de turno ciclo completo con 3 jugadores" do
    #     @board=Board.new
    #     settings=Settings.new
    #     settings.constructor
    #     settings.addPlayer("Rosendo")
    #     settings.addPlayer("Benacio")
    #     settings.addPlayer("Natalia")
    #     @board.constructor(3,settings)
    #     expect(@board.getTurn).to eq "A"
    #     #como inicialmente es el turno del jugador A ahora deberia ser de B
    #     @board.nextPlayer
    #     expect(@board.getTurn).to eq "B"
    #     #como ahora es turno de jugador B deberia cambiar a jugador C
    #     @board.nextPlayer
    #     expect(@board.getTurn).to eq "C"
    #     #como ahora es turno de jugador C deberia cambiar a jugador A
    #     @board.nextPlayer
    #     expect(@board.getTurn).to eq "A"
    # end

    # it "Cambiar de turno ciclo completo con 4 jugadores" do
    #     @board=Board.new
    #     settings=Settings.new
    #     settings.constructor
    #     settings.addPlayer("Rosendo")
    #     settings.addPlayer("Benacio")
    #     settings.addPlayer("Natalia")
    #     settings.addPlayer("Tatiana")
    #     @board.constructor(4,settings)
    #     expect(@board.getTurn).to eq "A"
    #     #como inicialmente es el turno del jugador A ahora deberia ser de B
    #     @board.nextPlayer
    #     expect(@board.getTurn).to eq "B"
    #     #como ahora es turno de jugador B deberia cambiar a jugador C
    #     @board.nextPlayer
    #     expect(@board.getTurn).to eq "C"
    #     #como ahora es turno de jugador C deberia cambiar a jugador D
    #     @board.nextPlayer
    #     expect(@board.getTurn).to eq "D"
    #      #como ahora es turno de jugador D deberia cambiar a jugador A
    #     @board.nextPlayer
    #     expect(@board.getTurn).to eq "A"
    # end

    # it "jugar con dos jugadores" do
    #     @board=Board.new
    #     settings=Settings.new
    #     settings.constructor
    #     settings.addPlayer("Rosendo")
    #     settings.addPlayer("Benacio")
    #     @board.constructor(2,settings)

    #     width=3
    #     height=3
    #     @board.generateBoard(width,height)
    #     value=21
    #     expect(@board.getTurn).to eq "A" #verificamos que el turno sea de jugador A

    #     @board.checkLine(value)#ahora la cassilla pertenece al jugador A
    #     expect(@board.getLine(value)).to eq "A"
        
    #     @board.nextPlayer
    #     value=4
    #     @board.checkLine(value)#ahora la cassilla pertenece al jugador B
    #     expect(@board.getLine(value)).to eq "B"

    # end
    # it "jugar con tres jugadores" do
    #     @board=Board.new
    #     settings=Settings.new
    #     settings.constructor
    #     settings.addPlayer("Rosendo")
    #     settings.addPlayer("Benacio")
    #     settings.addPlayer("Natalia")
    #     @board.constructor(3,settings)

    #     width=3
    #     height=3
    #     @board.generateBoard(width,height)
    #     value=21
    #     expect(@board.getTurn).to eq "A" #verificamos que el turno sea de jugador A

    #     @board.checkLine(value)#ahora la cassilla pertenece al jugador A
    #     expect(@board.getLine(value)).to eq "A"
        
    #     @board.nextPlayer
    #     value=4
    #     @board.checkLine(value)#ahora la cassilla pertenece al jugador B
    #     expect(@board.getLine(value)).to eq "B"

    #     @board.nextPlayer
    #     value=12
    #     @board.checkLine(value)#ahora la cassilla pertenece al jugador C
    #     expect(@board.getLine(value)).to eq "C"
    # end
    # it "jugar con cuatro jugadores" do
    #     @board=Board.new
    #     settings=Settings.new
    #     settings.constructor
    #     settings.addPlayer("Rosendo")
    #     settings.addPlayer("Benacio")
    #     settings.addPlayer("Natalia")
    #     settings.addPlayer("Tatiana")
    #     @board.constructor(4,settings)

    #     width=3
    #     height=3
    #     @board.generateBoard(width,height)
    #     value=21
    #     expect(@board.getTurn).to eq "A" #verificamos que el turno sea de jugador A

    #     @board.checkLine(value)#ahora la cassilla pertenece al jugador A
    #     expect(@board.getLine(value)).to eq "A"
        
    #     @board.nextPlayer
    #     value=4
    #     @board.checkLine(value)#ahora la cassilla pertenece al jugador B
    #     expect(@board.getLine(value)).to eq "B"

    #     @board.nextPlayer
    #     value=12
    #     @board.checkLine(value)#ahora la cassilla pertenece al jugador C
    #     expect(@board.getLine(value)).to eq "C"

    #     @board.nextPlayer
    #     value=9
    #     @board.checkLine(value)#ahora la cassilla pertenece al jugador D
    #     expect(@board.getLine(value)).to eq "D"
    # end

    # it "obtener el contenido de cada caja del tablero, deberia ser una cadena vacia" do
    #     @board=Board.new
    #     settings=Settings.new
    #     settings.constructor
    #     settings.addPlayer("Natalia")
    #     settings.addPlayer("Tatiana")
    #     @board.constructor(2,settings)
    #     width=3
    #     height=3
    #     @board.generateBoard(width,height)


    #     for row in(0..(height-1))
    #         for col in(0..(width-1))
    #             expect(@board.getContent(row,col)).to eq ""
    #         end
    #     end
    # end

    # it "Pintar las cajas con el color del jugador que marco la ultima linea libre" do
    #     @board=Board.new
    #     settings=Settings.new
    #     settings.constructor
    #     settings.addPlayer("Natalia")
    #     settings.addPlayer("Tatiana")
    #     @board.constructor(2,settings)

    #     width=3
    #     height=3
    #     @board.generateBoard(width,height)
    #     value=1
    #     expect(@board.getTurn).to eq "A" #verificamos que el turno sea de jugador A

    #     @board.checkLine(value)#ahora la cassilla pertenece al jugador A
    #     expect(@board.getLine(value)).to eq "A"
        
    #     @board.nextPlayer
    #     value=4
    #     @board.checkLine(value)#ahora la cassilla pertenece al jugador B
    #     expect(@board.getLine(value)).to eq "B"

    #     @board.nextPlayer
    #     value=5
    #     @board.checkLine(value)#ahora la cassilla pertenece al jugador A
    #     expect(@board.getLine(value)).to eq "A"

    #     @board.nextPlayer
    #     value=8
    #     @board.checkLine(value)#ahora la cassilla pertenece al jugador B
    #     expect(@board.getLine(value)).to eq "B"

    #     #por el tamaño de nuestro tablero la primera caja[0][0] tendria las lineas 1 4 5 8 
    #     #B fue el jugador que marco la ultima linea libre de la caja
    #     # por tanto el contenido de la casilla se vuelve de B
    #     @board.paintBoxes
    #     # se revisa que cajas tienen las 4 lineas marcadas y se las pinta del correspondiente al jugador
    #     red="background:#ff637d;"
    #     expect(@board.getContent(0,0)).to eq red
    # end

    # it "Incrementar el puntaje del jugador por caja pintada y dar un turno extra" do 
    #     @board=Board.new
    #     settings=Settings.new
    #     settings.constructor
    #     settings.addPlayer("Natalia")
    #     settings.addPlayer("Tatiana")
    #     @board.constructor(2,settings)

    #     width=3
    #     height=3
    #     @board.generateBoard(width,height)
    #     value=1
    #     expect(@board.getTurn).to eq "A" #verificamos que el turno sea de jugador A

    #     @board.checkLine(value)#ahora la cassilla pertenece al jugador A
    #     expect(@board.getLine(value)).to eq "A"
        
    #     @board.nextPlayer
    #     value=4
    #     @board.checkLine(value)#ahora la cassilla pertenece al jugador B
    #     expect(@board.getLine(value)).to eq "B"

    #     @board.nextPlayer
    #     value=5
    #     @board.checkLine(value)#ahora la cassilla pertenece al jugador A
    #     expect(@board.getLine(value)).to eq "A"

    #     @board.nextPlayer
    #     value=8
    #     @board.checkLine(value)#ahora la cassilla pertenece al jugador B
    #     expect(@board.getLine(value)).to eq "B"

    #     #por el tamaño de nuestro tablero la primera caja[0][0] tendria las lineas 1 4 5 8 
    #     #B fue el jugador que marco la ultima linea libre de la caja
    #     # por tanto el contenido de la casilla se vuelve de B
    #     @board.paintBoxes
    #     # se revisa que cajas tienen las 4 lineas marcadas y se las pinta del correspondiente al jugador
    #     playerB=2
    #     expect(@board.getScoreOf(playerB)).to eq 0#incialmente su score esta en 0
    #     @board.calculteScore
    #    expect(@board.getScoreOf(playerB)).to eq 1#el puntaje del jugador B se incremento en 1
    # end
    # it "Reiniciar partida,verificamos que los puntajes esten en 0 ,el tablero sin jugadas, ni cajas pintadas y el turno por defecto en A(primer jugador)" do
    #     @board=Board.new
    #     settings=Settings.new
    #     settings.constructor
    #     settings.addPlayer("Natalia")
    #     settings.addPlayer("Tatiana")
    #     players=settings.getPlayersAdded
    #     @board.constructor(2,settings)
    #     width=3
    #     height=3


    #     #-----------------Codigo para pintar una caja y mas sus jugadas
        
    #     @board.generateBoard(width,height)
    #     @board.checkLine(1)#ahora la cassilla pertenece al jugador A
    #     @board.nextPlayer
    #     @board.checkLine(4)#ahora la cassilla pertenece al jugador B
    #     @board.nextPlayer
    #     @board.checkLine(5)#ahora la cassilla pertenece al jugador A
    #     @board.nextPlayer
    #     @board.checkLine(8)#ahora la cassilla pertenece al jugador B
    #     @board.paintBoxes
    #     # se revisa que cajas tienen las 4 lineas marcadas y se las pinta del correspondiente al jugador
    #     playerB=2
    #     expect(@board.getScoreOf(playerB)).to eq 0#incialmente su score esta en 0
    #     @board.calculteScore#el puntaje del jugador B se incremento en 1
    #    expect(@board.getScoreOf(playerB)).to eq 1


    #     #-----------------------------------------------------------------
    #     #se vuelve a generar otra matriz 
    #     @board.generateBoard(width,height)
    #     for row in(0..(height-1))
    #         for col in(0..(width-1))
    #             expect(@board.getContent(row,col)).to eq ""
    #         end
    #     end
    #     #se resetea el puntaje a 0

    #     @board.resetScore
    #     # verificando que sea 0
    #     for index in(0..1)
    #         expect(@board.getScoreOf(index)).to eq 0
    #     end

    #     #se deja el turno por defecto al jugador A
    #     @board.setTurn("A")
    #     expect(@board.getTurn).to eq "A"
    # end

    # it "regresar a menu principal, deberia borrar los jugadores y todos los datos de la partida y el turno por defecto en A(primer jugador)" do
    #     @board=Board.new
    #     settings=Settings.new
    #     settings.constructor
    #     settings.addPlayer("Natalia")
    #     settings.addPlayer("Tatiana")
    #     players=settings.getPlayersAdded
    #     @board.constructor(2,settings)
    #     width=3
    #     height=3


    #     #-----------------Codigo para pintar una caja y mas sus jugadas
        
    #     @board.generateBoard(width,height)
    #     @board.checkLine(1)#ahora la cassilla pertenece al jugador A
    #     @board.nextPlayer
    #     @board.checkLine(4)#ahora la cassilla pertenece al jugador B
    #     @board.nextPlayer
    #     @board.checkLine(5)#ahora la cassilla pertenece al jugador A
    #     @board.nextPlayer
    #     @board.checkLine(8)#ahora la cassilla pertenece al jugador B
    #     @board.paintBoxes
    #     # se revisa que cajas tienen las 4 lineas marcadas y se las pinta del correspondiente al jugador
    #     playerB=2
    #     expect(@board.getScoreOf(playerB)).to eq 0#incialmente su score esta en 0
    #     @board.calculteScore#el puntaje del jugador B se incremento en 1
    #    expect(@board.getScoreOf(playerB)).to eq 1


    #     #-----------------------------------------------------------------
    #     #se vuelve a generar otra matriz 
    #     @board.generateBoard(width,height)
    #     for row in(0..(height-1))
    #         for col in(0..(width-1))
    #             expect(@board.getContent(row,col)).to eq ""
    #         end
    #     end
    #     #se borran todos los jugadores 
    #     @board.deleteAllUsers
    #     # verificamos que el vector de jugadores este vacio
    #     expect(@board.isPlayersEmpty).to eq true
    #     #se deja el turno por defecto al jugador A
    #     @board.setTurn("A")
    #     expect(@board.getTurn).to eq "A"
    # end
end