require 'nfe-ruby/entidades/nfe_entity'
require 'nfe_ruby/config/params'

#elemento infProt dentro do tipo TProtNFe
class ProtocoloStatus
  include 'nfe_entiy'

  #Identificação do ambiente : 1-Producao 2-Homologação
  nfe_attr :tpAmb

  #Versao do aplicativo que processou a NF-e
  nfe_attr :verAplic

  #Chaves de acesso da NF-e, compostas por: UF do emitente, AAMM da emissão da NFe, CNPJ
  #do emitente, modelo, série e número da NF-e e código numérico+DV.
  nfe_attr :chNFe

  #Data e hora de processamento, no formato AAAA-MM-DDTHH:MM:SS. Deve ser preenchida com
  #data e hora da gravação no Banco em caso de Confirmação. Em caso de Rejeição, com data e hora do
  #recebimento do Lote de NF-e enviado.
  nfe_attr :dhRecbto

  #Número do Protocolo de Status da NF-e. 1 posição (1 – Secretaria de Fazenda Estadual 2
  #– Receita Federal); 2 - códiga da UF - 2 posições ano; 10 seqüencial no ano.
  nfe_attr :nProt

  #Digest Value da NF-e processada. Utilizado para conferir a integridade da NF-e original.
  nfe_attr :digVal

  #codigo status da mensagem enviada
  nfe_attr :cStat

  #Descrição literal do status do serviço solicitado
  nfe_attr :xMotivo

  nfe_attr :Id #opcional

  #TODO o que significa isso? esta embaixo do Id
  #<xs:element ref="ds:Signature" minOccurs="0"/>

  def tamb=(value)
    if Nfe::TIPOS_DE_AMBIENTE.include? value
      @tamb = value
    else
      raise 'Tipo de ambiente inválido'
    end
  end

  XML <<-xml
  <xs:complexType name="TProtNFe">
    <xs:annotation>
      <xs:documentation>Tipo Protocolo de status resultado do processamento da NF-e</xs:documentation>
    </xs:annotation>
    <xs:sequence>
      <xs:element name="infProt">
        <xs:annotation>
          <xs:documentation>Dados do protocolo de status</xs:documentation>
        </xs:annotation>
        <xs:complexType>
          <xs:sequence>
            <xs:element name="tpAmb" type="TAmb">
              <xs:annotation>
                <xs:documentation>Identificação do Ambiente:
                  1 - Produção
                  2 - Homologação
                </xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="verAplic" type="TVerAplic">
              <xs:annotation>
                <xs:documentation>Versão do Aplicativo que processou a NF-e</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="chNFe" type="TChNFe">
              <xs:annotation>
                <xs:documentation>Chaves de acesso da NF-e, compostas por: UF do emitente, AAMM da emissão da NFe, CNPJ
                  do emitente, modelo, série e número da NF-e e código numérico+DV.
                </xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="dhRecbto" type="xs:dateTime">
              <xs:annotation>
                <xs:documentation>Data e hora de processamento, no formato AAAA-MM-DDTHH:MM:SS. Deve ser preenchida com
                  data e hora da gravação no Banco em caso de Confirmação. Em caso de Rejeição, com data e hora do
                  recebimento do Lote de NF-e enviado.
                </xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="nProt" type="TProt" minOccurs="0">
              <xs:annotation>
                <xs:documentation>Número do Protocolo de Status da NF-e. 1 posição (1 – Secretaria de Fazenda Estadual 2
                  – Receita Federal); 2 - códiga da UF - 2 posições ano; 10 seqüencial no ano.
                </xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="digVal" type="ds:DigestValueType" minOccurs="0">
              <xs:annotation>
                <xs:documentation>Digest Value da NF-e processada. Utilizado para conferir a integridade da NF-e
                  original.
                </xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="cStat" type="TStat">
              <xs:annotation>
                <xs:documentation>Código do status da mensagem enviada.</xs:documentation>
              </xs:annotation>
            </xs:element>
            <xs:element name="xMotivo" type="TMotivo">
              <xs:annotation>
                <xs:documentation>Descrição literal do status do serviço solicitado.</xs:documentation>
              </xs:annotation>
            </xs:element>
          </xs:sequence>
          <xs:attribute name="Id" type="xs:ID" use="optional"/>
        </xs:complexType>
      </xs:element>
      <xs:element ref="ds:Signature" minOccurs="0"/>
    </xs:sequence>
    <xs:attribute name="versao" type="TVerNFe" use="required"/>
  </xs:complexType>
  xml

end