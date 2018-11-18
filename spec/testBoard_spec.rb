require "./lib/Board"
require "./lib/Settings"
describe Board do
    
    it "Verificar que el tamaño inicial del tablero es 0 x 0" do
        @board=Board.new
        settings=Settings.new
        settings.constructor
        settings.addPlayer("Rosendo")
        settings.addPlayer("Benacio")
        @board.constructor(2,settings)

        expect(@board.getWidth).to eq 0
        expect(@board.getHeight).to eq 0
    end

    it "Generar matriz del tablero" do
        @board=Board.new
        settings=Settings.new
        settings.constructor
        settings.addPlayer("Rosendo")
        settings.addPlayer("Benacio")
        @board.constructor(2,settings)

        width=3
        height=3
        @board.generateBoard(width,height)
        expect(@board.getWidth).to eq 3
        expect(@board.getHeight).to eq 3
        #no supe como verificar que una matriz sea generada,por lo tanto solo compruebo 
        #que el tamaño sea en el que se definio
    end
    it "Buscar el valor de una linea existente en el tablero(matriz de cajas)" do
        @board=Board.new
        settings=Settings.new
        settings.constructor
        settings.addPlayer("Rosendo")
        settings.addPlayer("Benacio")
        @board.constructor(2,settings)

        width=3
        height=3
        @board.generateBoard(width,height)
        #como el tablero es de 3x3 entonces se tiene 9 cajas
        #entonces se tendria 9x4 =36 lineas 
        #entre las que 12 lineas comparten el mismo valor 
        #por tanto se tiene 24 lineas diferentes
        value=24
        expect(@board.getLine(value)).to eq 24
    end
    it "Buscar el valor de una linea inexistente en el tablero, deberia obtener 0 por no encontrarla" do
        @board=Board.new
        settings=Settings.new
        settings.constructor
        settings.addPlayer("Rosendo")
        settings.addPlayer("Benacio")
        @board.constructor(2,settings)

        width=3
        height=3
        @board.generateBoard(width,height)
        #como el tablero es de 3x3 entonces se tiene 9 cajas
        #entonces se tendria 9x4 =36 lineas 
        #entre las que 12 lineas comparten el mismo valor 
        #por tanto se tiene 24 lineas diferentes
        value=25#no existe
        expect(@board.getLine(value)).to eq "doesNotExist"
    end
    it "Cambiar de turno ciclo completo con 2 jugadores" do
        @board=Board.new
        settings=Settings.new
        settings.constructor
        settings.addPlayer("Rosendo")
        settings.addPlayer("Benacio")
        @board.constructor(2,settings)
        expect(@board.getTurn).to eq "A"
        #como inicialmente es el turno del jugador A ahora deberia ser de B
        @board.turnOf
        expect(@board.getTurn).to eq "B"
        #como ahora es turno de jugador B deberia cambiar a jugador A
        @board.turnOf
        expect(@board.getTurn).to eq "A"
    end

    it "Cambiar de turno ciclo completo con 3 jugadores" do
        @board=Board.new
        settings=Settings.new
        settings.constructor
        settings.addPlayer("Rosendo")
        settings.addPlayer("Benacio")
        settings.addPlayer("Natalia")
        @board.constructor(3,settings)
        expect(@board.getTurn).to eq "A"
        #como inicialmente es el turno del jugador A ahora deberia ser de B
        @board.turnOf
        expect(@board.getTurn).to eq "B"
        #como ahora es turno de jugador B deberia cambiar a jugador C
        @board.turnOf
        expect(@board.getTurn).to eq "C"
        #como ahora es turno de jugador C deberia cambiar a jugador A
        @board.turnOf
        expect(@board.getTurn).to eq "A"
    end

    it "Cambiar de turno ciclo completo con 4 jugadores" do
        @board=Board.new
        settings=Settings.new
        settings.constructor
        settings.addPlayer("Rosendo")
        settings.addPlayer("Benacio")
        settings.addPlayer("Natalia")
        settings.addPlayer("Tatiana")
        @board.constructor(4,settings)
        expect(@board.getTurn).to eq "A"
        #como inicialmente es el turno del jugador A ahora deberia ser de B
        @board.turnOf
        expect(@board.getTurn).to eq "B"
        #como ahora es turno de jugador B deberia cambiar a jugador C
        @board.turnOf
        expect(@board.getTurn).to eq "C"
        #como ahora es turno de jugador C deberia cambiar a jugador D
        @board.turnOf
        expect(@board.getTurn).to eq "D"
         #como ahora es turno de jugador D deberia cambiar a jugador A
        @board.turnOf
        expect(@board.getTurn).to eq "A"
    end

    it "jugar con dos jugadores" do
        @board=Board.new
        settings=Settings.new
        settings.constructor
        settings.addPlayer("Rosendo")
        settings.addPlayer("Benacio")
        @board.constructor(2,settings)

        width=3
        height=3
        @board.generateBoard(width,height)
        value=21
        expect(@board.getTurn).to eq "A" #verificamos que el turno sea de jugador A

        @board.checkLine(value)#ahora la cassilla pertenece al jugador A
        expect(@board.getLine(value)).to eq "A"
        
        @board.turnOf
        value=4
        @board.checkLine(value)#ahora la cassilla pertenece al jugador B
        expect(@board.getLine(value)).to eq "B"

    end
    it "jugar con tres jugadores" do
        @board=Board.new
        settings=Settings.new
        settings.constructor
        settings.addPlayer("Rosendo")
        settings.addPlayer("Benacio")
        settings.addPlayer("Natalia")
        @board.constructor(3,settings)

        width=3
        height=3
        @board.generateBoard(width,height)
        value=21
        expect(@board.getTurn).to eq "A" #verificamos que el turno sea de jugador A

        @board.checkLine(value)#ahora la cassilla pertenece al jugador A
        expect(@board.getLine(value)).to eq "A"
        
        @board.turnOf
        value=4
        @board.checkLine(value)#ahora la cassilla pertenece al jugador B
        expect(@board.getLine(value)).to eq "B"

        @board.turnOf
        value=12
        @board.checkLine(value)#ahora la cassilla pertenece al jugador C
        expect(@board.getLine(value)).to eq "C"
    end
    it "jugar con cuatro jugadores" do
        @board=Board.new
        settings=Settings.new
        settings.constructor
        settings.addPlayer("Rosendo")
        settings.addPlayer("Benacio")
        settings.addPlayer("Natalia")
        settings.addPlayer("Tatiana")
        @board.constructor(4,settings)

        width=3
        height=3
        @board.generateBoard(width,height)
        value=21
        expect(@board.getTurn).to eq "A" #verificamos que el turno sea de jugador A

        @board.checkLine(value)#ahora la cassilla pertenece al jugador A
        expect(@board.getLine(value)).to eq "A"
        
        @board.turnOf
        value=4
        @board.checkLine(value)#ahora la cassilla pertenece al jugador B
        expect(@board.getLine(value)).to eq "B"

        @board.turnOf
        value=12
        @board.checkLine(value)#ahora la cassilla pertenece al jugador C
        expect(@board.getLine(value)).to eq "C"

        @board.turnOf
        value=9
        @board.checkLine(value)#ahora la cassilla pertenece al jugador D
        expect(@board.getLine(value)).to eq "D"
    end
end