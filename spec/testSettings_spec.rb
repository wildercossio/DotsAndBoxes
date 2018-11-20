require "./lib/Settings"

describe Settings do
    before(:each) do
        @settings=Settings.new
        @settings.constructor
    end

    it "Obtener la cantidad de jugadores inicial 0" do
        expect(@settings.getNumberPlayers).to eq 0
    end
    it "Incrementar la cantidad de jugadores en 1" do
        @settings.increaseNumberPlayers
        expect(@settings.getNumberPlayers).to eq 1
    end

    it "Añadir un jugador" do
        @settings.addPlayer("Rosendo")
        @settings.addPlayer("Benacio")
        expect(@settings.getNumberPlayers).to eq 2
    end

    it "Obtener todos los jugadores añadidos" do
        playersAdded=Array.new
        player1=Player.new
        player1.constructor("Tatiana","background:#54ba9b;","A")#(nombre,color,caracter distintivo)
        player2=Player.new
        player2.constructor("Natalia","background:#ff637d;","B")
        playersAdded=[player1,player2]


        @settings.addPlayer("Tatiana")
        @settings.addPlayer("Natalia")
        players=Array.new
        players=@settings.getPlayersAdded
        #expect(players).to contain_exactly(player1,player2)
        #no pude continuar porque no encontre la forma de comparar dos vectores
    end


end