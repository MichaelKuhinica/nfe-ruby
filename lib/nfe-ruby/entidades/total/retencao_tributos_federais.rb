require "../entidade_nfe"

#Retenção de Tributos Federais
#elemento retTrib do elemento total da NFe
class RetencaoTributosFederais < EntidadeNFe

  nfe_attr :vRetPIS
  nfe_attr :vRetCOFINS
  nfe_attr :vRetCSLL
  nfe_attr :vBCIRRF
  nfe_attr :vIRRF
  nfe_attr :vBCRetPrev
  nfe_attr :vRetPrev

  def attributes
    {:retTrib => super}
  end

  xml <<-xml
<xs:element name="retTrib" minOccurs="0">
        <xs:annotation>
          <xs:documentation>Retenção de Tributos Federais</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:sequence>
            <xs:element name="vRetPIS" type="TDec_1302Opc" minOccurs="0">
              <xs:annotation>
                <xs:documentation>Valor Retido de PIS</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vRetCOFINS" type="TDec_1302Opc" minOccurs="0">
              <xs:annotation>
                <xs:documentation>Valor Retido de COFINS</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vRetCSLL" type="TDec_1302Opc" minOccurs="0">
              <xs:annotation>
                <xs:documentation>Valor Retido de CSLL</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vBCIRRF" type="TDec_1302Opc" minOccurs="0">
              <xs:annotation>
                <xs:documentation>Base de Cálculo do IRRF</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vIRRF" type="TDec_1302Opc" minOccurs="0">
              <xs:annotation>
                <xs:documentation>Valor Retido de IRRF</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vBCRetPrev" type="TDec_1302Opc" minOccurs="0">
              <xs:annotation>
                <xs:documentation>Base de Cálculo da Retenção da Previdêncica Social</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vRetPrev" type="TDec_1302Opc" minOccurs="0">
              <xs:annotation>
                <xs:documentation>Valor da Retenção da Previdêncica Social</xs:documentation>
              </xs:annotation>
            </xs:element>
          </xs:sequence>
        </xs:complexType>
      </xs:element>
  xml
end