require 'rubygems'

$LOAD_PATH.unshift(File.dirname(__FILE__))

puts 'Rodando nfe-ruby'

#puts $LOAD_PATH

require 'nfe-ruby/config/params'
require 'nfe-ruby/entidades/nota_fiscal'

nf = NotaFiscal.new

nf.avulsa.CNPJ = 'cnpj'
nf.avulsa.xOrgao = 'orgao'
nf.avulsa.matr = 'material'

nf.cana = 'xxxxx'
nf.cobr = 'xxxxx'
nf.compra = 'xxxxx'
nf.dest = 'xxxxx'
nf.det = 'xxxxx'
nf.emit = 'xxxxx'
nf.entrega = 'xxxxx'
nf.exporta = 'xxxxx'
nf.ide = 'xxxxx'
nf.infAdic = 'xxxxx'
nf.retirada = 'xxxxx'
nf.total = 'xxxxx'
nf.transp = 'xxxxx'
puts nf.to_nfe_format