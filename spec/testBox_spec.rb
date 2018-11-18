require "./lib/Box"
describe Box do
    before(:each) do
        @box=Box.new
        topLine=1
        leftLine=2
        rightLine=3
        bottomLine=4
        @box.constructor(topLine,leftLine,rightLine,bottomLine)
    end

    it "Obtener los valores las lineas de una caja" do
        expect(@box.getValueTopLine).to eq 1
        expect(@box.getValueLeftLine).to eq 2
        expect(@box.getValueRightLine).to eq 3
        expect(@box.getValueBottomLine).to eq 4
    end
    
    it "Obtener los id las lineas de una caja" do
        expect(@box.getIdTopLine).to eq 1
        expect(@box.getIdLeftLine).to eq 2
        expect(@box.getIdRightLine).to eq 3
        expect(@box.getIdBottomLine).to eq 4
    end

    it "Verificar que los valores enviados, si existan en una caja" do
        value1=1#son valores que pueden o no pertencer a una linea de la caja, en este caso todos pertenecen
        value2=2
        value3=3
        value4=4
        expect(@box.isHere(value1)).to eq true
        expect(@box.isHere(value2)).to eq true
        expect(@box.isHere(value3)).to eq true
        expect(@box.isHere(value4)).to eq true
    end


end