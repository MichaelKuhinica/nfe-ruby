$LOAD_PATH.unshift(File.dirname(__FILE__) + '../../lib')
# require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

# require 'nfe/entidades/infNFe/nota_fiscal'

# describe 'nfe' do

#   it 'should generate a valid xml' do
#     @xsds_path = File.dirname(__FILE__) + '/../nfedoc/PL_006g/'
#     xsd = Nokogiri::XML::Schema(open(@xsds_path + '/leiauteNFe_v2.00.xsd'))
#     doc = NFe::NotaFiscal.new.to_xml

#     xsd.validate(doc).each do |error|
#       puts error.message
#     end
#   end

# end


require 'rspec'
require 'nfe-ruby'
require 'nfe/service/web_service'