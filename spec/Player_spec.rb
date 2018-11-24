require './lib/Player'
describe Player do

    before(:each) do 
        @player=Player.new
        @player.constructor("Juan","background:#54ba9b;","A",0)
                           #(nombre, color, caracter del jugador, puntaje)
    end

    it "Verificar que el nombre del jugador sea el esperado" do
        expect(@player.getName).to eq "Juan"
    end
    it "Verificar que el color del jugador sea el esperado" do
        expect(@player.getColor).to eq "background:#54ba9b;"
    end
    it "Verificar que el caracter del jugador sea el esperado" do
        expect(@player.getCharacter).to eq "A"
    end
    it "verificar que el puntaje inicial del jugador sea 0" do
        expect(@player.getScore).to eq 0
    end
    it "Verificar que el puntaje del jugador incremente en 1" do
        @player.increaseScore
        expect(@player.getScore).to eq 1
    end

    it "Verificar que el puntaje del jugador se reinicie a 0" do
        @player.increaseScore
        @player.increaseScore
        @player.increaseScore#se incrementa el score = 4
        @player.increaseScore
        @player.restartScoreToZero
        expect(@player.getScore).to eq 0
    end

end