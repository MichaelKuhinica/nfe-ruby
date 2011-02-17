require "../entidade_nfe"

#totais referentes ao ICMS
class TotaisICMS < EntidadeNFe
  
  #BC do ICMS
  nfe_attr :vBC

  #Valor total do ICMS
  nfe_attr :vICMS

  #BC do ICMS ST
  nfe_attr :vBCST

  #Valor Total do ICMS ST
  nfe_attr :vST

  #Valor total dos produtos e serviços
  nfe_attr :vProd

  #Valor total do frete
  nfe_attr :vFrete

  #Valor total do Seguro
  nfe_attr :vSeg

  #Valor total do desconto
  nfe_attr :vDesc

  #Valor total do II
  nfe_attr :vII

  #Valor total do IPI
  nfe_attr :vIPI

  #Valor do PIS
  nfe_attr :vPIS

  #valor total do COFINS
  nfe_attr :vCOFINS

  #Outras despesas acessorias
  nfe_attr :vOutro

  #valor total da NFe
  nfe_attr :vNF

  def attributes
    {:ICMSTot => super} 
  end

  xml <<-xml
<xs:element name="ICMSTot">
        <xs:annotation>
          <xs:documentation>Totais referentes ao ICMS</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:sequence>
            <xs:element name="vBC" type="TDec_1302">
              <xs:annotation>
                <xs:documentation>BC do ICMS</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vICMS" type="TDec_1302">
              <xs:annotation>
                <xs:documentation>Valor Total do ICMS</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vBCST" type="TDec_1302">
              <xs:annotation>
                <xs:documentation>BC do ICMS ST</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vST" type="TDec_1302">
              <xs:annotation>
                <xs:documentation>Valor Total do ICMS ST</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vProd" type="TDec_1302">
              <xs:annotation>
                <xs:documentation>Valor Total dos produtos e serviços</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vFrete" type="TDec_1302">
              <xs:annotation>
                <xs:documentation>Valor Total do Frete</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vSeg" type="TDec_1302">
              <xs:annotation>
                <xs:documentation>Valor Total do Seguro</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vDesc" type="TDec_1302">
              <xs:annotation>
                <xs:documentation>Valor Total do Desconto</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vII" type="TDec_1302">
              <xs:annotation>
                <xs:documentation>Valor Total do II</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vIPI" type="TDec_1302">
              <xs:annotation>
                <xs:documentation>Valor Total do IPI</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vPIS" type="TDec_1302">
              <xs:annotation>
                <xs:documentation>Valor do PIS</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vCOFINS" type="TDec_1302">
              <xs:annotation>
                <xs:documentation>Valor do COFINS</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vOutro" type="TDec_1302">
              <xs:annotation>
                <xs:documentation>Outras Despesas acessórias</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vNF" type="TDec_1302">
              <xs:annotation>
                <xs:documentation>Valor Total da NF-e</xs:documentation>
              </xs:annotation>
            </xs:element>
          </xs:sequence>
        </xs:complexType>
      </xs:element>
  xml
end