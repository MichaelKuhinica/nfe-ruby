require "../entidade_nfe"

#Informações de exportação
class Exportacao < EntidadeNFe

  #UF onde ocorrerá o embarque dos produtos
  nfe_attr :UFEmbarq

  #Local onde ocorrerá o embarque até 60 caracteres
  nfe_attr :xLocEmbarq

  def attributes
    { :exporta => super }
  end

  xml <<-XML
            <xs:element name="exporta" minOccurs="0">
              <xs:annotation>
                <xs:documentation>Informações de exportação</xs:documentation>
              </xs:annotation>
              <xs:complexType>
                <xs:sequence>
                  <xs:element name="UFEmbarq" type="TUf">
                    <xs:annotation>
                      <xs:documentation>Sigla da UF onde ocorrerá o embarque dos produtos</xs:documentation>
                    </xs:annotation>
                  </xs:element>
                  <xs:element name="xLocEmbarq">
                    <xs:annotation>
                      <xs:documentation>Local onde ocorrerá o embarque dos produtos</xs:documentation>
                    </xs:annotation>
                    <xs:simpleType>
                      <xs:restriction base="TString">
                        <xs:minLength value="1"/>
                        <xs:maxLength value="60"/>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:element>
                </xs:sequence>
              </xs:complexType>
            </xs:element>
  XML

end