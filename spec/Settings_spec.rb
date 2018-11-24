require "./lib/Settings"

describe Settings do
    before(:each) do
        @settings=Settings.new
        @settings.constructor
    end

    it "Verificar que el vector de jugadores este vacio" do
        expect(@settings.isListEmpty).to eq true
    end

    it "Verificar que al añadir un jugador, el vector no este vacio" do
        player=Player.new
        player.constructor("Juan","background:#54ba9b;","A",0)
        @settings.addPlayer(player)
        expect(@settings.isListEmpty).to eq false
    end
    
    it "Verificar que al añadir un jugador, el numero de jugadores sea 1" do
        player=Player.new
        player.constructor("Juan","background:#54ba9b;","A",0)
        @settings.addPlayer(player)
        expect(@settings.getNumberPlayers).to eq 1
    end

    it "Verificar que al añadir 4 jugadores, el vector tenga 4 jugadores" do
        player=Player.new
        player.constructor("Juan","background:#54ba9b;","A",0)
        @settings.addPlayer(player)
        player.constructor("Pedro","background:#ff637d;","B",0)
        @settings.addPlayer(player)
        player.constructor("Carlos","background:#5473ba;","C",0)
        @settings.addPlayer(player)
        player.constructor("Sergio","background:#ba54a6;","D",0)
        @settings.addPlayer(player)
        expect(@settings.getNumberPlayers).to eq 4
    end
    it "Verificar que los jugadores, se añadieron correctamente" do
        #jugadores añadidos
        player=Player.new
        player.constructor("Juan","background:#54ba9b;","A",0)
        @settings.addPlayer(player)
        player.constructor("Pedro","background:#ff637d;","B",0)
        @settings.addPlayer(player)
        player.constructor("Carlos","background:#5473ba;","C",0)
        @settings.addPlayer(player)
        player.constructor("Sergio","background:#ba54a6;","D",0)
        @settings.addPlayer(player)
        #lo obtenido-jugadores añadidos
        addPlayers=@settings.getPlayersAdded
        #resultado esperado
        expectedPlayers=create4Players
        #comparando
        for i in(0..3)
            expect(@settings.compare(addPlayers[i],expectedPlayers[i])).to eq true
        end
    end
    it "Verificar que al eliminar todos los jugadores añadidos, el vector deberia estar vacio" do
        player=Player.new
        player.constructor("Juan","background:#54ba9b;","A",0)
        @settings.addPlayer(player)
        player.constructor("Pedro","background:#ff637d;","B",0)
        @settings.addPlayer(player)
        player.constructor("Carlos","background:#5473ba;","C",0)
        @settings.addPlayer(player)
        player.constructor("Sergio","background:#ba54a6;","D",0)
        @settings.addPlayer(player)
        #eliminando todos
        @settings.deleteAllPlayers
        #####################
        expect(@settings.getNumberPlayers).to eq 0
    end
    #metodos auxiliares
    def create4Players
        expected=Array.new
        player=Player.new
        player.constructor("Juan","background:#54ba9b;","A",0)
        expected.push(player)
        player.constructor("Pedro","background:#ff637d;","B",0)
        expected.push(player)
        player.constructor("Carlos","background:#5473ba;","C",0)
        expected.push(player)
        player.constructor("Sergio","background:#ba54a6;","D",0)
        expected.push(player)
        return expected
    end
end