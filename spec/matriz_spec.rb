require 'matriz'
require 'matrizDispersa'
require 'matrizDensa'
require 'racional'

describe Matriz do
  
  before :each do
    @m1 = MatrizDensa.new([[1,3],[2,0]])
    @m2 = MatrizDensa.new([[2,1],[0,1]])
    @m3 = MatrizDensa.new([[2,0,1],[3,0,0],[5,1,1]])
    @m4 = MatrizDensa.new([[4,1,6],[2,0,1]])
    @m5 = MatrizDensa.new([[Fraccion.new(1, 2), Fraccion.new(3, 5)], [Fraccion.new(3, 4), Fraccion.new(2, 3)]])
    @m6 = MatrizDensa.new([[Fraccion.new(3, 2), Fraccion.new(1, 5)], [Fraccion.new(5, 4), Fraccion.new(1, 3)]])
    @md1 = MatrizDispersa.new(3,3,{0 => {0 => 3, 2 => 7}, 2 => {1 => 1}})
    @md2 = MatrizDispersa.new(3,3,{0 => {1 => 2, 2 => 2}, 1 => {0 => 1}})
  end

  describe "# Se crean las matrices del tamanio especificado e inicialidas" do
    it "Se establecen correctamente las dimensiones" do
      @m1.mCol.should == 2
      @m1.nFil.should == 2
      @m3.mCol.should == 3
      @m3.nFil.should == 3
      @m5.mCol.should == 2
      @m5.nFil.should == 2
      @md1.nFil.should == 3
      @md1.mCol.should == 3
      @md2.nFil.should == 3
      @md2.mCol.should == 3
    end
    it "Se inicializa correctamente" do
      @m1.to_s.should == "1 3 \n2 0 \n"
      @m2.to_s.should == "2 1 \n0 1 \n"
      @m3.to_s.should == "2 0 1 \n3 0 0 \n5 1 1 \n"
      @m5.to_s.should == "1/2 3/5 \n3/4 2/3 \n"
      @md1.to_s.should == "3 0 7 \n0 0 0 \n0 1 0 \n" 
      @md2.to_s.should == "0 2 2 \n1 0 0 \n0 0 0 \n"
    end
  end

end