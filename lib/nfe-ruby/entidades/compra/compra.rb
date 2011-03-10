require 'nfe-ruby/entidades/entidade_nfe'

#Informações de compras (Nota de Empenho, Pedido e Contrato)
class Compra < EntidadeNFe

  #Informacoes de compras(Nota de empenho, pedido, contrato)
  nfe_attr :xNEmp

  #Informacoes do pedido
  nfe_attr :xPed
  
  #Informação do contrato
  nfe_attr :xCont

  def attributes
    {:compra => super}
  end

end