require '../entidade_nfe'

#Informações de registro aquisições de cana // v2.0
class Cana < EntidadeNFe
  #Identificacao da safra // v2.0 (minimo 4 max 9 caracteres)
  nfe_attr :safra

  #Mês e Ano de Referência, formato: MM/AAAA // 2.0
  nfe_attr :ref

  #Fornecimentos diários // v2.0
  nfe_attr :forDia #fornecimento_diario

  #Total do mes
  nfe_attr :qTotMes

  #Total Anterior
  nfe_attr :qTotAnt

  #Total geral
  nfe_attr :qTotGer

  #Deducoes de taxas e Contribuições (deducoes.rb)
  nfe_attr :deduc # de 1 a 10 dessas

  #Valor dos fornecimentos
  nfe_attr :vFor

  #Valor total das deducoes
  nfe_attr :vTotDed

  #Valor liquido dos fornecimentos
  nfe_attr :vLiqFor

  xml <<-XML
            <xs:element name="cana" minOccurs="0">
              <xs:annotation>
                <xs:documentation>Informações de registro aquisições de cana // v2.0</xs:documentation>
              </xs:annotation>
              <xs:complexType>
                <xs:sequence>
                  <xs:element name="safra">
                    <xs:annotation>
                      <xs:documentation>Identificação da safra // v2.0</xs:documentation>
                    </xs:annotation>
                    <xs:simpleType>
                      <xs:restriction base="TString">
                        <xs:minLength value="4"/>
                        <xs:maxLength value="9"/>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:element>
                  <xs:element name="ref">
                    <xs:annotation>
                      <xs:documentation>Mês e Ano de Referência, formato: MM/AAAA // 2.0</xs:documentation>
                    </xs:annotation>
                    <xs:simpleType>
                      <xs:restriction base="xs:string">
                        <xs:whiteSpace value="preserve"/>
                        <xs:pattern value="(0[1-9]|1[0-2])([/][2][0-9][0-9][0-9])"/>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:element>
                  <xs:element name="forDia" maxOccurs="31">
                    <xs:annotation>
                      <xs:documentation>Fornecimentos diários // v2.0</xs:documentation>
                    </xs:annotation>
                    <xs:complexType>
                      <xs:sequence>
                        <xs:element name="qtde" type="TDec_1110">
                          <xs:annotation>
                            <xs:documentation>Quantidade em quilogramas - peso líquido // v2.0</xs:documentation>
                          </xs:annotation>
                        </xs:element>
                      </xs:sequence>
                      <xs:attribute name="dia" use="required">
                        <xs:annotation>
                          <xs:documentation>Número do dia // v2.0</xs:documentation>
                        </xs:annotation>
                        <xs:simpleType>
                          <xs:restriction base="xs:string">
                            <xs:whiteSpace value="preserve"/>
                            <xs:pattern value="[1-9]|[1][0-9]|[2][0-9]|[3][0-1]?"/>
                          </xs:restriction>
                        </xs:simpleType>
                      </xs:attribute>
                    </xs:complexType>
                    <xs:unique name="pk_Dia">
                      <xs:selector xpath="./*"/>
                      <xs:field xpath="@dia"/>
                    </xs:unique>
                  </xs:element>
                  <xs:element name="qTotMes" type="TDec_1110">
                    <xs:annotation>
                      <xs:documentation>Total do mês // v2.0</xs:documentation>
                    </xs:annotation>
                  </xs:element>
                  <xs:element name="qTotAnt" type="TDec_1110">
                    <xs:annotation>
                      <xs:documentation>Total Anterior // v2.0</xs:documentation>
                    </xs:annotation>
                  </xs:element>
                  <xs:element name="qTotGer" type="TDec_1110">
                    <xs:annotation>
                      <xs:documentation>Total Geral // v2.0</xs:documentation>
                    </xs:annotation>
                  </xs:element>
                  <xs:element name="deduc" minOccurs="0" maxOccurs="10">
                    <xs:annotation>
                      <xs:documentation>Deduções - Taxas e Contribuições // v2.0</xs:documentation>
                    </xs:annotation>
                    <xs:complexType>
                      <xs:sequence>
                        <xs:element name="xDed">
                          <xs:annotation>
                            <xs:documentation>Descrição da Dedução // v2.0</xs:documentation>
                          </xs:annotation>
                          <xs:simpleType>
                            <xs:restriction base="TString">
                              <xs:minLength value="1"/>
                              <xs:maxLength value="60"/>
                            </xs:restriction>
                          </xs:simpleType>
                        </xs:element>
                        <xs:element name="vDed" type="TDec_1302">
                          <xs:annotation>
                            <xs:documentation>valor da dedução // v2.0</xs:documentation>
                          </xs:annotation>
                        </xs:element>
                      </xs:sequence>
                    </xs:complexType>
                  </xs:element>
                  <xs:element name="vFor" type="TDec_1302">
                    <xs:annotation>
                      <xs:documentation>Valor dos fornecimentos // v2.0</xs:documentation>
                    </xs:annotation>
                  </xs:element>
                  <xs:element name="vTotDed" type="TDec_1302">
                    <xs:annotation>
                      <xs:documentation>Valor Total das Deduções // v2.0</xs:documentation>
                    </xs:annotation>
                  </xs:element>
                  <xs:element name="vLiqFor" type="TDec_1302">
                    <xs:annotation>
                      <xs:documentation>Valor Líquido dos fornecimentos // v2.0</xs:documentation>
                    </xs:annotation>
                  </xs:element>
                </xs:sequence>
              </xs:complexType>
            </xs:element>

  XML
end