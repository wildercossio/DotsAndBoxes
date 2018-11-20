require './lib/Player'
describe Player do

    before(:each) do 
        @player=Player.new
        @player.constructor("Bronzuna","background:#54ba9b;","X")
        #el puntaje inicia siempre en 0
        #el caracter ej "X" existe para diferenciar jugadores con el mismo nombre
        #el color para que el jugador tenga una diferencia visual 
    end

    it "obtener el nombre de un jugador" do
        expect(@player.getName).to eq "Bronzuna"
    end
    it "obtener el color de un jugador" do
        expect(@player.getColor).to eq "background:#54ba9b;"
    end
    it "obtener el caracter de un jugador" do
        expect(@player.getCharacter).to eq "X"
    end
    it "obtener el puntaje inicial de un jugador" do
        expect(@player.getScore).to eq 0
    end
    it "incrementar en 1 el puntaje de un jugador" do
        @player.increaseScore
        expect(@player.getScore).to eq 1
    end

    it "reiniciar el score a 0" do
        @player.increaseScore#1
        @player.increaseScore#2
        @player.increaseScore#3
        @player.increaseScore#4
        expect(@player.getScore).to eq 4
        @player.restartScoreToZero
        expect(@player.getScore).to eq 0
    end

end