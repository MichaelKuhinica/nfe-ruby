require '../entidade_nfe'

class COFINSAliq < EntidadeNFe

=begin
Código de Situação Tributária do COFINS.
01 – Operação Tributável - Base de Cálculo = Valor da Operação Alíquota Normal
(Cumulativo/Não Cumulativo);
02 - Operação Tributável - Base de Calculo = Valor da Operação (Alíquota
Diferenciada);
=end
    nfe_attr :CST

    nfe_attr :vBC

    nfe_attr :pCOFINS
    
    nfe_attr :vCOFINS

end