require "./lib/Line"
describe Line do
    it "Obtener el valor de una linea" do
        value=1
        line=Line.new
        line.constructor(value)
        expect(line.getValue).to eq 1
    end
    it "Obtener el id de una linea" do
        id=1
        line=Line.new
        line.constructor(id)
        expect(line.getId).to eq 1
    end
end