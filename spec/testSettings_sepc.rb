require "./lib/Settings"
require "./lib/Player"
describe Settings do
    it "Añadir un jugador" do
        settings=Settings.new
        settings.constructor
        settings.addPlayer("Rosendo")
        settings.addPlayer("Benacio")
        expect(settings.getNumberPlayers).to eq 2
    end
end