require 'rubygems'
require 'test/unit'

$LOAD_PATH.unshift(File.dirname(__FILE__))

puts 'Rodando nfe-ruby'

#puts $LOAD_PATH

require 'entidades/cliente'
require 'entidades/emitente'
require 'entidades/nota_fiscal'
require 'entidades/produto'
require 'entidades/produto_icms'
require 'entidades/transportadora'
require 'entidades/endereco_emitente'

x = EnderecoEmitente.new
puts x.to_nfe_format