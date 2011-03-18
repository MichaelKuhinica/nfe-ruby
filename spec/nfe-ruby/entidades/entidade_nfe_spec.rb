require File.expand_path(File.dirname(__FILE__) + '../../../spec_helper')

describe 'EntidadeNFe' do

  describe "Class Methods" do

    it 'should have nfe_attr as a method' do
      NFe::EntidadeNFe::methods.include?(:nfe_attrs).should be_true
    end

  end

  describe "Instances" do

    before(:all) do

      class Teste < NFe::EntidadeNFe
        nfe_attr :teste_attr
      end

      @obj_test = Teste.new
    end

    it 'attributes method must return an hash' do
      @obj_test.nfe_attrs.should eql(["teste_attr"])
    end

    it 'should not share attrbutes with simblings' do
      class Teste2 < NFe::EntidadeNFe
        nfe_attr :teste_attr2
      end

      @obj_test.nfe_attrs.should eql(["teste_attr"])
    end

    it 'should export as valid xml' do
      @obj_test.teste_attr = "valor"
      @obj_test.to_nfe.should eql("<?xml version=\"1.0\"?>\n<teste>\n  <teste_attr>valor</teste_attr>\n</teste>\n")
    end

  end

end
