require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'nokogiri'
require 'nfe-ruby/entidades/entidade_nfe'

describe 'EntidadeNFe' do

  before(:all) do

    class Teste < EntidadeNFe
      nfe_attr :teste_attr
    end

    @obj_test = Teste.new
    @xsds_path = File.dirname(__FILE__) + '/../nfedoc/PL_006g/'
  end

  it 'attributes method must return an hash' do
    @obj_test.attributes.is_a?(Hash).should be_true
  end

  it 'should have some attributes if i create a subclass with an nfe_attr' do
    @obj_test.attributes.include?(:teste_attr).should be_true
  end

  it 'should have nfe_attr as a method' do
    EntidadeNFe::methods.include?(:nfe_attr).should be_true
  end

  it 'should generate a valid xml' do
    xsd = Nokogiri::XML::Schema(File.read(@xsds_path + '/leiauteNFe_v2.00.xsd'))
    doc = NotaFiscal.new.to_nfe_format

    xsd.validate(doc).each do |error|
      puts error.message
    end
  end

end
