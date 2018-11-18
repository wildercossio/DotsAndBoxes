require "./lib/Line"
describe Line do
    before(:each) do
        number=12
        @line=Line.new
        @line.constructor(number)
    end
    it "Obtener el valor de una linea" do
        expect(@line.getValue).to eq 12
    end
    it "Obtener el id de una linea" do
        expect(@line.getId).to eq 12
    end
end