require "./lib/Line"
describe Line do
    before(:each) do
        number=12
        @line=Line.new
        @line.constructor(number)
    end
    it "Verificar que el valor de la linea sea el esperado" do
        expect(@line.getValue).to eq 12
    end
    it "Verificar que la linea sea marcada con el caracter de un jugador" do
        characterPlayer="A"
        @line.setValue(characterPlayer)
        expect(@line.getValue).to eq "A"
    end
    it "Verificar que el id de la linea sea el esperado" do
        expect(@line.getId).to eq 12
    end
    
end