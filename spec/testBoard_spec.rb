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
end