require 'rubygems'

# $LOAD_PATH.unshift(File.dirname(__FILE__))

puts 'Rodando nfe-ruby'

#puts $LOAD_PATH

require 'nfe-ruby/config/params'

require 'nfe-ruby/entidades/cliente'
require 'nfe-ruby/entidades/emitente'
require 'nfe-ruby/entidades/nota_fiscal'
require 'nfe-ruby/entidades/produto'
require 'nfe-ruby/entidades/produto_icms'
require 'nfe-ruby/entidades/transportadora'
require 'nfe-ruby/entidades/endereco_emitente'

x = EnderecoEmitente.new
puts x.to_nfe_format
