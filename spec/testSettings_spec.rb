require "./lib/Settings"

describe Settings do
    before(:each) do
        @settings=Settings.new
        @settings.constructor
    end

    it "El vector de jugadores deberia estar vacia" do
        expect(@settings.isListEmpty).to eq true
    end

    it "Al añadir un jugador, el vector deberia estar vacio" do
        player=Player.new
        player.constructor("Juan","background:#54ba9b;","A",0)
        @settings.addPlayer(player)
        expect(@settings.isListEmpty).to eq false
    end
    
    it "Al añadir un jugador, el vector deberia tener 1 jugador" do
        player=Player.new
        player.constructor("Juan","background:#54ba9b;","A",0)
        @settings.addPlayer(player)
        expect(@settings.getNumberPlayers).to eq 1
    end

    it "Al añadir 4 jugadores, el vector deberia tener 4 jugadores" do
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
        #lo obtenido
        addPlayers=@settings.getPlayersAdded
        #resultado esperado
        expectedPlayers=create4Players
        #comparando
        for i in(0..3)
            expect(@settings.compare(addPlayers[i],expectedPlayers[i])).to eq true
        end
    end
    it "Al eliminar todos los jugadores añadidos, el vector deberia estar vacio" do
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
    #metodos axiliares
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