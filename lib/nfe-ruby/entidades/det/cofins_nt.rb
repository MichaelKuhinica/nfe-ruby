require "../entidade_nfe"

class CofinsNt < EntidadeNFe
    #Código de Situação Tributária do COFINS:
    #04 - Operação Tributável - Tributação Monofásica - (Alíquota Zero);
    #06 - Operação Tributável - Alíquota Zero;
    #07 - Operação Isenta da contribuição;
    #08 - Operação Sem Incidência da contribuição;
    #09 - Operação com suspensão da contribuição;
    nfe_attr :CST
end