require "./lib/Box"
describe Box do
    it "Obtener las lineas de una caja" do
        box=Box.new
        expect(box.getTopLine).to eq 1
        expect(box.getLeftLine).to eq 2
        expect(box.getRightLine).to eq 3
        expect(box.getBottomLine).to eq 4
    end
end