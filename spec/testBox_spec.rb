require "./lib/Box"
describe Box do
    before(:each) do
        @box=Box.new
        @box.constructor(1,2,3,4,"",0,false)
    end

    it "Verificar que la caja tenga los valores de lineas esperados" do
        expect(@box.getValueTopLine).to eq 1
        expect(@box.getValueLeftLine).to eq 2
        expect(@box.getValueRightLine).to eq 3
        expect(@box.getValueBottomLine).to eq 4
    end
    
    it "Verificar que la caja tenga los ids de lineas esperados" do
        expect(@box.getIdTopLine).to eq 1
        expect(@box.getIdLeftLine).to eq 2
        expect(@box.getIdRightLine).to eq 3
        expect(@box.getIdBottomLine).to eq 4
    end
    it "Verificar que el contenido de la caja este vacio" do
        expect(@box.getContent).to eq ""
    end
    it "Verificar que la cantidad inicial de lineas marcadas sea 0" do
        expect(@box.getNumberCheckLines).to eq 0
    end
    it "Verificar que la caja no este marcada, es decir que no pertenezca a ningun jugador" do
        expect(@box.getBoxChecked).to eq false
    end
    it "Verificar que la caja este marcada, es decir que pertenece a un jugador" do
        @box.boxChecked
        expect(@box.getBoxChecked).to eq true
    end
    it "Verificar que la caja pertenece a un jugador" do
        @box.setContent("A")
        expect(@box.getContent).to eq "A"
    end
    
    it "Verificar que el numero de lineas marcadas incremente en 1" do
        #inicialmente se encuentra en 0
        @box.increaseNumberCheckLines
        expect(@box.getNumberCheckLines).to eq 1
    end
    it "Verificar que una linea no marcada, siga con el mismo valor" do
        expect(@box.getLine(4)).to eq 4
    end
    it "Verificar que lineas no marcadas, sigan con el mismo valor" do
        expect(@box.getLine(1)).to eq 1
        expect(@box.getLine(2)).to eq 2
        expect(@box.getLine(3)).to eq 3
        expect(@box.getLine(4)).to eq 4
    end
    
    it "Verificar que el valor de una linea no pertenezca a la caja" do
        expect(@box.getLine(5)).to eq "not here"
    end
    it "Verificar una linea de la caja se marque" do
        @box.checkLine(1,"A")
        expect(@box.getLine(1)).to eq "A"
    end
    it "Verificar que todas las lineas de la caja se marquen" do
        @box.checkLine(1,"A")
        @box.checkLine(2,"A")
        @box.checkLine(3,"A")
        @box.checkLine(4,"A")
        expect(@box.getLine(1)).to eq "A"
        expect(@box.getLine(2)).to eq "A"
        expect(@box.getLine(3)).to eq "A"
        expect(@box.getLine(4)).to eq "A"
    end
    it "Verificar que la caja se pinte del color del jugador cuando se tenga las 4 lineas marcadas" do
        green="background:#54ba9b;"
        @box.increaseNumberCheckLines
        @box.increaseNumberCheckLines#se marcaron las 4 lineas
        @box.increaseNumberCheckLines
        @box.increaseNumberCheckLines
        @box.paintBox(green)
        expect(@box.getContent).to eq green
    end
end