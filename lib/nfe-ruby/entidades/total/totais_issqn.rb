require "../entidade_nfe"

#Totais referentes ao ISSQN
#elemento ISSQNtot do elemento total da NFe
class TotaisIssqn < EntidadeNFe

  #Valor Total dos Serviços sob não-incidência ou não tributados pelo ICMS
  nfe_attr :vServ

  #Base de Cálculo do ISS
  nfe_attr :vBC

  #Base de Cálculo do ISS
  nfe_attr :vISS

  #Valor do PIS sobre serviços
  nfe_attr :vPIS

  #Valor do COFINS sobre serviço
  nfe_attr :vCOFINS

  def attributes
    { :ISSQNtot => super }
  end

  xml <<-xml
<xs:element name="ISSQNtot" minOccurs="0">
        <xs:annotation>
          <xs:documentation>Totais referentes ao ISSQN</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:sequence>
            <xs:element name="vServ" type="TDec_1302Opc" minOccurs="0">
              <xs:annotation>
                <xs:documentation>Valor Total dos Serviços sob não-incidência ou não tributados pelo ICMS
                </xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vBC" type="TDec_1302Opc" minOccurs="0">
              <xs:annotation>
                <xs:documentation>Base de Cálculo do ISS</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vISS" type="TDec_1302Opc" minOccurs="0">
              <xs:annotation>
                <xs:documentation>Valor Total do ISS</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vPIS" type="TDec_1302Opc" minOccurs="0">
              <xs:annotation>
                <xs:documentation>Valor do PIS sobre serviços</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="vCOFINS" type="TDec_1302Opc" minOccurs="0">
              <xs:annotation>
                <xs:documentation>Valor do COFINS sobre serviços</xs:documentation>
              </xs:annotation>
            </xs:element>
          </xs:sequence>
        </xs:complexType>
      </xs:element>
  xml
end