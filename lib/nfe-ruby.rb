require 'rubygems'

$LOAD_PATH.unshift(File.dirname(__FILE__))

puts 'Rodando nfe-ruby'

#puts $LOAD_PATH

=begin
require 'nfe-ruby/entidades/nfe_entity'
require 'nfe-ruby/entidades/cliente'
require 'nfe-ruby/entidades/emitente'
require 'nfe-ruby/entidades/nota_fiscal'
require 'nfe-ruby/entidades/produto'
require 'nfe-ruby/entidades/produto_icms'
require 'nfe-ruby/entidades/transportadora'
=end

require 'nfe-ruby/config/params'
require 'nfe-ruby/entidades/nota_fiscal'

nf = NotaFiscal.new

nf.to_nfe_format


