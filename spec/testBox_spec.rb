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

    it "Verificar que los 4 valores enviados, si pertenezcan a una caja" do
        value1=1#son valores que pueden o no pertencer a una linea de la caja
        value2=2#en este caso esta caja si contiene los 4 valores
        value3=3
        value4=4
        expect(@box.isHere(value1)).to eq true
        expect(@box.isHere(value2)).to eq true
        expect(@box.isHere(value3)).to eq true
        expect(@box.isHere(value4)).to eq true
    end
    it "Verificar que el valor enviado, no exista en una caja" do
        value=5
        expect(@box.isHere(value)).to eq false
    end

    it "Obtener el contenido de una caja y que sea vacio" do
        expect(@box.getContent).to eq ""
    end
    
    it "Cambiar el contenido de una caja por el caracter de un jugador" do
        #aclarar que los jugadores se diferencian por A B C D
        itBelongsToMe="A"
        @box.setContent(itBelongsToMe)#indicamos que le pertenece al jugador A
        #elegi colocar caracteres(A,B,C,D) a los jugadores, para que se diferencien
        #en caso de haber jugadores con el mismo nombre
        expect(@box.getContent).to eq "A" 
    end
    
end