require "./lib/Board"
describe Board do
    before(:each) do
        @board=Board.new
        @board.constructor
    end
    it "Verificar que el tamaño inicial del tablero es 0 x 0" do
        expect(@board.getWidth).to eq 0
        expect(@board.getHeight).to eq 0
    end

    it "Generar matriz del tablero" do
        width=3
        height=3
        @board.generateBoard(width,height)
        expect(@board.getWidth).to eq 3
        expect(@board.getHeight).to eq 3
        #no supe como verificar que una matriz sea generada, solo compruebo que el tamaño sea en el que se definio
    end
    it "Buscar el valor de una linea existente en el tablero(matriz de cajas)" do
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
end