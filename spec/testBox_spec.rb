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

    it "Verificar que el valor enviado, si pertenezcan a una caja" do
        value3=3#son valores que pueden o no pertencer a una linea de la caja
        expect(@box.isHere(value3)).to eq true
    end
    it "Verificar que el valor enviado, no pertenezca a una caja" do
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

    it "Obtener el valor una linea en especifico, sabiendo que pertenece a una caja" do
        value=2
        expect(@box.getLine(value)).to eq 2
    end
    it "Obtener la cantidad inicial 0 de lineas marcadas" do
        expect(@box.getNumberCheckLines).to eq 0
    end
    it "Incrementar en 1 la cantidad de lineas marcadas" do
        @box.increaseNumberCheckLines
        expect(@box.getNumberCheckLines).to eq 1
    end
    
    it "Marcar una linea de una caja" do
        value=3
        characterPlayer="A"
        @box.checkLine(value,characterPlayer)
        expect(@box.getLine(value)).to eq "A"
    end
    it "Pintar el contenido de una caja si tiene sus 4 lineas marcadas" do
        colorPlayer="background:#54ba9b;"# es el color verde
        @box.paintBox(colorPlayer)
        expect(@box.getContent).to eq colorPlayer#se verifica que el contenido de la caja se haya pintado
    end
end