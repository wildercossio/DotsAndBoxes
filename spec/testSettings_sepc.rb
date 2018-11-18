require "./lib/Settings"
require "./lib/Player"
describe Settings do
    it "Añadir un jugador" do
        player1=Player.new
        player1.contructor("Bronson","background:#54ba9b;","A")#(nombre,color,caracter distintivo)
        player2=Player.new
        player2.contructor("Rosendo","background:#ff637d;","B")
        settings=Settings.new
        settings.addPlayer(player1)
        settings.addPlayer(player2)
        expect(settings.getNumberPlayers).to eq 2
    end
end