require './lib/Player'
describe Player do

    before(:each) do 
        @player=Player.new
        @player.constructor("Juan","background:#54ba9b;","A",0)
                           #(nombre, color, caracter del jugador, puntaje)
    end

    it "obtener el nombre de un jugador" do
        expect(@player.getName).to eq "Juan"
    end
    it "obtener el color de un jugador" do
        expect(@player.getColor).to eq "background:#54ba9b;"
    end
    it "obtener el caracter de un jugador" do
        expect(@player.getCharacter).to eq "A"
    end
    it "verificar que el puntaje inicial del jugador sea 0" do
        expect(@player.getScore).to eq 0
    end
    it "incrementar en 1 el puntaje de un jugador" do
        @player.increaseScore
        expect(@player.getScore).to eq 1
    end

    it "reiniciar el score a 0" do
        @player.increaseScore
        @player.increaseScore
        @player.increaseScore#se incrementa el score = 4
        @player.increaseScore
        @player.restartScoreToZero
        expect(@player.getScore).to eq 0
    end

end