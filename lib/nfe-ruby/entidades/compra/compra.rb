require '../entidade_nfe'

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

  xml <<-XML
            <xs:element name="compra" minOccurs="0">
              <xs:annotation>
                <xs:documentation>Informações de compras (Nota de Empenho, Pedido e Contrato)</xs:documentation>
              </xs:annotation>
              <xs:complexType>
                <xs:sequence>
                  <xs:element name="xNEmp" minOccurs="0">
                    <xs:annotation>
                      <xs:documentation>Informação da Nota de Empenho de compras públicas</xs:documentation>
                    </xs:annotation>
                    <xs:simpleType>
                      <xs:restriction base="TString">
                        <xs:minLength value="1"/>
                        <xs:maxLength value="17"/>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:element>
                  <xs:element name="xPed" minOccurs="0">
                    <xs:annotation>
                      <xs:documentation>Informação do pedido</xs:documentation>
                    </xs:annotation>
                    <xs:simpleType>
                      <xs:restriction base="TString">
                        <xs:minLength value="1"/>
                        <xs:maxLength value="60"/>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:element>
                  <xs:element name="xCont" minOccurs="0">
                    <xs:annotation>
                      <xs:documentation>Informação do contrato</xs:documentation>
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