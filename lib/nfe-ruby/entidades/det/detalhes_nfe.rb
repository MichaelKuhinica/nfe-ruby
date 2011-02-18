
#TODO :(
#
class DetalhesNFe

  xml <<-XML
            <xs:element name="det" maxOccurs="990">
              <xs:annotation>
                <xs:documentation>Dados dos detalhes da NF-e</xs:documentation>
              </xs:annotation>
              <xs:complexType>
                <xs:sequence>
                  <xs:element name="prod">
                    <xs:annotation>
                      <xs:documentation>Dados dos produtos e serviços da NF-e</xs:documentation>
                    </xs:annotation>
                    <xs:complexType>
                      <xs:sequence>
                        <xs:element name="cProd">
                          <xs:annotation>
                            <xs:documentation>Código do produto ou serviço. Preencher com CFOP caso se trate de itens
                              não relacionados com mercadorias/produto e que o contribuinte não possua codificação
                              própria
                              Formato ”CFOP9999”.
                            </xs:documentation>
                          </xs:annotation>
                          <xs:simpleType>
                            <xs:restriction base="TString">
                              <xs:maxLength value="60"/>
                              <xs:minLength value="1"/>
                            </xs:restriction>
                          </xs:simpleType>
                        </xs:element>
                        <xs:element name="cEAN">
                          <xs:annotation>
                            <xs:documentation>GTIN (Global Trade Item Number) do produto, antigo código EAN ou código de
                              barras
                            </xs:documentation>
                          </xs:annotation>
                          <xs:simpleType>
                            <xs:restriction base="xs:string">
                              <xs:whiteSpace value="preserve"/>
                              <xs:pattern value="[0-9]{0}|[0-9]{8}|[0-9]{12,14}"/>
                            </xs:restriction>
                          </xs:simpleType>
                        </xs:element>
                        <xs:element name="xProd">
                          <xs:annotation>
                            <xs:documentation>Descrição do produto ou serviço</xs:documentation>
                          </xs:annotation>
                          <xs:simpleType>
                            <xs:restriction base="TString">
                              <xs:maxLength value="120"/>
                              <xs:minLength value="1"/>
                            </xs:restriction>
                          </xs:simpleType>
                        </xs:element>
                        <xs:element name="NCM">
                          <xs:annotation>
                            <xs:documentation>Código NCM (8 posições), será permitida a informação do gênero (posição do
                              capítulo do NCM) quando a operação não for de comércio exterior (importação/exportação) ou
                              o produto não seja tributado pelo IPI. Em caso de item de serviço ou item que não tenham
                              produto (Ex. transferência de crédito, crédito do ativo imobilizado, etc.), informar o
                              código 00 (zeros) (v2.0)
                            </xs:documentation>
                          </xs:annotation>
                          <xs:simpleType>
                            <xs:restriction base="xs:string">
                              <xs:whiteSpace value="preserve"/>
                              <xs:pattern value="[0-9]{2}|[0][1-9][0-9]{6}|[1-9][0-9]{7}"/>
                            </xs:restriction>
                          </xs:simpleType>
                        </xs:element>
                        <xs:element name="EXTIPI" minOccurs="0">
                          <xs:annotation>
                            <xs:documentation>Código EX TIPI (3 posições)</xs:documentation>
                          </xs:annotation>
                          <xs:simpleType>
                            <xs:restriction base="xs:string">
                              <xs:whiteSpace value="preserve"/>
                              <xs:pattern value="[0-9]{2,3}"/>
                            </xs:restriction>
                          </xs:simpleType>
                        </xs:element>
                        <xs:element name="CFOP" type="TCfop">
                          <xs:annotation>
                            <xs:documentation>Código Fiscal de Operações e Prestações</xs:documentation>
                          </xs:annotation>
                        </xs:element>
                        <xs:element name="uCom">
                          <xs:annotation>
                            <xs:documentation>Unidade comercial</xs:documentation>
                          </xs:annotation>
                          <xs:simpleType>
                            <xs:restriction base="TString">
                              <xs:maxLength value="6"/>
                              <xs:minLength value="1"/>
                            </xs:restriction>
                          </xs:simpleType>
                        </xs:element>
                        <xs:element name="qCom" type="TDec_1504">
                          <xs:annotation>
                            <xs:documentation>Quantidade Comercial do produto, alterado para aceitar de 0 a 4 casas
                              decimais e 11 inteiros. (v2.0)
                            </xs:documentation>
                          </xs:annotation>
                        </xs:element>
                        <xs:element name="vUnCom" type="TDec_1110">
                          <xs:annotation>
                            <xs:documentation>Valor unitário de comercialização - alterado para aceitar 0 a 10 casas
                              decimais e 11 inteiros (v2.0)
                            </xs:documentation>
                          </xs:annotation>
                        </xs:element>
                        <xs:element name="vProd" type="TDec_1302">
                          <xs:annotation>
                            <xs:documentation>Valor bruto do produto ou serviço.</xs:documentation>
                          </xs:annotation>
                        </xs:element>
                        <xs:element name="cEANTrib">
                          <xs:annotation>
                            <xs:documentation>GTIN (Global Trade Item Number) da unidade tributável, antigo código EAN
                              ou código de barras
                            </xs:documentation>
                          </xs:annotation>
                          <xs:simpleType>
                            <xs:restriction base="xs:string">
                              <xs:whiteSpace value="preserve"/>
                              <xs:pattern value="[0-9]{0}|[0-9]{8}|[0-9]{12,14}"/>
                            </xs:restriction>
                          </xs:simpleType>
                        </xs:element>
                        <xs:element name="uTrib">
                          <xs:annotation>
                            <xs:documentation>Unidade Tributável</xs:documentation>
                          </xs:annotation>
                          <xs:simpleType>
                            <xs:restriction base="TString">
                              <xs:maxLength value="6"/>
                              <xs:minLength value="1"/>
                            </xs:restriction>
                          </xs:simpleType>
                        </xs:element>
                        <xs:element name="qTrib" type="TDec_1504">
                          <xs:annotation>
                            <xs:documentation>Quantidade Tributável - alterado para aceitar de 0 a 4 casas decimais e 11
                              inteiros (v2.0)
                            </xs:documentation>
                          </xs:annotation>
                        </xs:element>
                        <xs:element name="vUnTrib" type="TDec_1110">
                          <xs:annotation>
                            <xs:documentation>Valor unitário de tributação - - alterado para aceitar 0 a 10 casas
                              decimais e 11 inteiros (v2.0)
                            </xs:documentation>
                          </xs:annotation>
                        </xs:element>
                        <xs:element name="vFrete" type="TDec_1302Opc" minOccurs="0">
                          <xs:annotation>
                            <xs:documentation>Valor Total do Frete</xs:documentation>
                          </xs:annotation>
                        </xs:element>
                        <xs:element name="vSeg" type="TDec_1302Opc" minOccurs="0">
                          <xs:annotation>
                            <xs:documentation>Valor Total do Seguro</xs:documentation>
                          </xs:annotation>
                        </xs:element>
                        <xs:element name="vDesc" type="TDec_1302Opc" minOccurs="0">
                          <xs:annotation>
                            <xs:documentation>Valor do Desconto</xs:documentation>
                          </xs:annotation>
                        </xs:element>
                        <xs:element name="vOutro" type="TDec_1302Opc" minOccurs="0">
                          <xs:annotation>
                            <xs:documentation>Outras despesas acessórias - (v2.0)</xs:documentation>
                          </xs:annotation>
                        </xs:element>
                        <xs:element name="indTot">
                          <xs:annotation>
                            <xs:documentation>Este campo deverá ser preenchido com:
                              0 – o valor do item (vProd) não compõe o valor total da NF-e (vProd)
                              1 – o valor do item (vProd) compõe o valor total da NF-e (vProd)
                              (v2.0)
                            </xs:documentation>
                          </xs:annotation>
                          <xs:simpleType>
                            <xs:restriction base="xs:string">
                              <xs:whiteSpace value="preserve"/>
                              <xs:enumeration value="0"/>
                              <xs:enumeration value="1"/>
                            </xs:restriction>
                          </xs:simpleType>
                        </xs:element>
                        <xs:element name="DI" minOccurs="0" maxOccurs="unbounded">
                          <xs:complexType>
                            <xs:sequence>
                              <xs:element name="nDI">
                                <xs:annotation>
                                  <xs:documentation>Numero do Documento de Importação DI/DSI/DA (DI/DSI/DA)
                                  </xs:documentation>
                                </xs:annotation>
                                <xs:simpleType>
                                  <xs:restriction base="TString">
                                    <xs:minLength value="1"/>
                                    <xs:maxLength value="10"/>
                                  </xs:restriction>
                                </xs:simpleType>
                              </xs:element>
                              <xs:element name="dDI" type="TData">
                                <xs:annotation>
                                  <xs:documentation>Data de registro da DI/DSI/DA (AAAA-MM-DD)</xs:documentation>
                                </xs:annotation>
                              </xs:element>
                              <xs:element name="xLocDesemb">
                                <xs:annotation>
                                  <xs:documentation>Local do desembaraço aduaneiro</xs:documentation>
                                </xs:annotation>
                                <xs:simpleType>
                                  <xs:restriction base="TString">
                                    <xs:minLength value="1"/>
                                    <xs:maxLength value="60"/>
                                  </xs:restriction>
                                </xs:simpleType>
                              </xs:element>
                              <xs:element name="UFDesemb" type="TUfEmi">
                                <xs:annotation>
                                  <xs:documentation>UF onde ocorreu o desembaraço aduaneiro</xs:documentation>
                                </xs:annotation>
                              </xs:element>
                              <xs:element name="dDesemb" type="TData">
                                <xs:annotation>
                                  <xs:documentation>Data do desembaraço aduaneiro (AAAA-MM-DD)</xs:documentation>
                                </xs:annotation>
                              </xs:element>
                              <xs:element name="cExportador">
                                <xs:annotation>
                                  <xs:documentation>Código do exportador (usado nos sistemas internos de informação do
                                    emitente da NF-e)
                                  </xs:documentation>
                                </xs:annotation>
                                <xs:simpleType>
                                  <xs:restriction base="TString">
                                    <xs:minLength value="1"/>
                                    <xs:maxLength value="60"/>
                                  </xs:restriction>
                                </xs:simpleType>
                              </xs:element>
                              <xs:element name="adi" maxOccurs="unbounded">
                                <xs:annotation>
                                  <xs:documentation>Adições</xs:documentation>
                                </xs:annotation>
                                <xs:complexType>
                                  <xs:sequence>
                                    <xs:element name="nAdicao">
                                      <xs:annotation>
                                        <xs:documentation>Número da Adição</xs:documentation>
                                      </xs:annotation>
                                      <xs:simpleType>
                                        <xs:restriction base="xs:string">
                                          <xs:whiteSpace value="preserve"/>
                                          <xs:pattern value="[1-9]{1}[0-9]{0,2}"/>
                                        </xs:restriction>
                                      </xs:simpleType>
                                    </xs:element>
                                    <xs:element name="nSeqAdic">
                                      <xs:annotation>
                                        <xs:documentation>Número seqüencial do item dentro da Adição</xs:documentation>
                                      </xs:annotation>
                                      <xs:simpleType>
                                        <xs:restriction base="xs:string">
                                          <xs:whiteSpace value="preserve"/>
                                          <xs:pattern value="[1-9]{1}[0-9]{0,2}"/>
                                        </xs:restriction>
                                      </xs:simpleType>
                                    </xs:element>
                                    <xs:element name="cFabricante">
                                      <xs:annotation>
                                        <xs:documentation>Código do fabricante estrangeiro (usado nos sistemas internos
                                          de informação do emitente da NF-e)
                                        </xs:documentation>
                                      </xs:annotation>
                                      <xs:simpleType>
                                        <xs:restriction base="TString">
                                          <xs:minLength value="1"/>
                                          <xs:maxLength value="60"/>
                                        </xs:restriction>
                                      </xs:simpleType>
                                    </xs:element>
                                    <xs:element name="vDescDI" type="TDec_1302Opc" minOccurs="0">
                                      <xs:annotation>
                                        <xs:documentation>Valor do desconto do item da DI – adição</xs:documentation>
                                      </xs:annotation>
                                    </xs:element>
                                  </xs:sequence>
                                </xs:complexType>
                              </xs:element>
                            </xs:sequence>
                          </xs:complexType>
                        </xs:element>
                        <xs:element name="xPed" minOccurs="0">
                          <xs:annotation>
                            <xs:documentation>pedido de compra - Informação de interesse do emissor para controle do
                              B2B. (v2.0)
                            </xs:documentation>
                          </xs:annotation>
                          <xs:simpleType>
                            <xs:restriction base="TString">
                              <xs:minLength value="1"/>
                              <xs:maxLength value="15"/>
                            </xs:restriction>
                          </xs:simpleType>
                        </xs:element>
                        <xs:element name="nItemPed" minOccurs="0">
                          <xs:annotation>
                            <xs:documentation>Número do Item do Pedido de Compra - Identificação do número do item do
                              pedido de Compra (v2.0)
                            </xs:documentation>
                          </xs:annotation>
                          <xs:simpleType>
                            <xs:restriction base="xs:string">
                              <xs:whiteSpace value="preserve"/>
                              <xs:pattern value="[0-9]{1,6}"/>
                            </xs:restriction>
                          </xs:simpleType>
                        </xs:element>
                        <xs:choice minOccurs="0">
                          <xs:annotation>
                            <xs:documentation>Informações específicas de produtos e serviços</xs:documentation>
                          </xs:annotation>
                          <xs:element name="veicProd">
                            <xs:annotation>
                              <xs:documentation>Veículos novos</xs:documentation>
                            </xs:annotation>
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element name="tpOp">
                                  <xs:annotation>
                                    <xs:documentation>Tipo da Operação (1 - Venda concessionária; 2 - Faturamento
                                      direto; 3 - Venda direta; 0 - Outros)
                                    </xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="xs:string">
                                      <xs:whiteSpace value="preserve"/>
                                      <xs:enumeration value="0"/>
                                      <xs:enumeration value="1"/>
                                      <xs:enumeration value="2"/>
                                      <xs:enumeration value="3"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="chassi">
                                  <xs:annotation>
                                    <xs:documentation>Chassi do veículo - VIN (código-identificação-veículo)
                                    </xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="xs:string">
                                      <xs:length value="17"/>
                                      <xs:whiteSpace value="preserve"/>
                                      <xs:pattern value="[A-Z0-9]+"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="cCor">
                                  <xs:annotation>
                                    <xs:documentation>Cor do veículo (código de cada montadora)</xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="TString">
                                      <xs:minLength value="1"/>
                                      <xs:maxLength value="4"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="xCor">
                                  <xs:annotation>
                                    <xs:documentation>Descrição da cor</xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="TString">
                                      <xs:minLength value="1"/>
                                      <xs:maxLength value="40"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="pot">
                                  <xs:annotation>
                                    <xs:documentation>Potência máxima do motor do veículo em cavalo vapor (CV).
                                      (potência-veículo)
                                    </xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="TString">
                                      <xs:minLength value="1"/>
                                      <xs:maxLength value="4"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="cilin">
                                  <xs:annotation>
                                    <xs:documentation>Capacidade voluntária do motor expressa em centímetros cúbicos
                                      (CC). (cilindradas) (v2.0)
                                    </xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="TString">
                                      <xs:minLength value="1"/>
                                      <xs:maxLength value="4"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="pesoL">
                                  <xs:annotation>
                                    <xs:documentation>Peso líquido</xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="TString">
                                      <xs:minLength value="1"/>
                                      <xs:maxLength value="9"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="pesoB">
                                  <xs:annotation>
                                    <xs:documentation>Peso bruto</xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="TString">
                                      <xs:minLength value="1"/>
                                      <xs:maxLength value="9"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="nSerie">
                                  <xs:annotation>
                                    <xs:documentation>Serial (série)</xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="TString">
                                      <xs:minLength value="1"/>
                                      <xs:maxLength value="9"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="tpComb">
                                  <xs:annotation>
                                    <xs:documentation>Tipo de combustível - Utilizar Tabela RENAVAM (v2.0)
                                      01-Álcool
                                      02-Gasolina
                                      03-Diesel
                                      (...)
                                      16-Álcool/Gasolina
                                      17-Gasolina/Álcool/GNV
                                      18-Gasolina/Elétrico
                                    </xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="TString">
                                      <xs:minLength value="1"/>
                                      <xs:maxLength value="2"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="nMotor">
                                  <xs:annotation>
                                    <xs:documentation>Número do motor</xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="TString">
                                      <xs:minLength value="1"/>
                                      <xs:maxLength value="21"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="CMT">
                                  <xs:annotation>
                                    <xs:documentation>CMT-Capacidade Máxima de Tração - em Toneladas 4 casas decimais
                                      (v2.0)
                                    </xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="TString">
                                      <xs:minLength value="1"/>
                                      <xs:maxLength value="9"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="dist">
                                  <xs:annotation>
                                    <xs:documentation>Distância entre eixos</xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="TString">
                                      <xs:minLength value="1"/>
                                      <xs:maxLength value="4"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="anoMod">
                                  <xs:annotation>
                                    <xs:documentation>Ano Modelo de Fabricação</xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="xs:string">
                                      <xs:whiteSpace value="preserve"/>
                                      <xs:pattern value="[0-9]{4}"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="anoFab">
                                  <xs:annotation>
                                    <xs:documentation>Ano de Fabricação</xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="xs:string">
                                      <xs:whiteSpace value="preserve"/>
                                      <xs:pattern value="[0-9]{4}"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="tpPint">
                                  <xs:annotation>
                                    <xs:documentation>Tipo de pintura</xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="TString">
                                      <xs:length value="1"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="tpVeic">
                                  <xs:annotation>
                                    <xs:documentation>Tipo de veículo (utilizar tabela RENAVAM)</xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="xs:string">
                                      <xs:whiteSpace value="preserve"/>
                                      <xs:pattern value="[0-9]{1,2}"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="espVeic">
                                  <xs:annotation>
                                    <xs:documentation>Espécie de veículo (utilizar tabela RENAVAM)</xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="xs:string">
                                      <xs:whiteSpace value="preserve"/>
                                      <xs:pattern value="[0-9]{1}"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="VIN">
                                  <xs:annotation>
                                    <xs:documentation>Informa-se o veículo tem VIN (chassi) remarcado.
                                      R-Remarcado
                                      N-NormalVIN
                                    </xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="TString">
                                      <xs:length value="1"/>
                                      <xs:enumeration value="R"/>
                                      <xs:enumeration value="N"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="condVeic">
                                  <xs:annotation>
                                    <xs:documentation>Condição do veículo (1 - acabado; 2 - inacabado; 3 - semi-acabado)
                                    </xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="xs:string">
                                      <xs:whiteSpace value="preserve"/>
                                      <xs:enumeration value="1"/>
                                      <xs:enumeration value="2"/>
                                      <xs:enumeration value="3"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="cMod">
                                  <xs:annotation>
                                    <xs:documentation>Código Marca Modelo (utilizar tabela RENAVAM)</xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="xs:string">
                                      <xs:whiteSpace value="preserve"/>
                                      <xs:pattern value="[0-9]{1,6}"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="cCorDENATRAN">
                                  <xs:annotation>
                                    <xs:documentation>Código da Cor Segundo as regras de pré-cadastro do DENATRAN (v2.0)
                                      01-AMARELO
                                      02-AZUL
                                      03-BEGE
                                      04-BRANCA
                                      05-CINZA
                                      06-DOURADA
                                      07-GRENA
                                      08-LARANJA
                                      09-MARROM
                                      10-PRATA
                                      11-PRETA
                                      12-ROSA
                                      13-ROXA
                                      14-VERDE
                                      15-VERMELHA
                                      16-FANTASIA
                                    </xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="xs:string">
                                      <xs:whiteSpace value="preserve"/>
                                      <xs:minLength value="1"/>
                                      <xs:maxLength value="2"/>
                                      <xs:pattern value="[0-9]{1,2}"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="lota">
                                  <xs:annotation>
                                    <xs:documentation>Quantidade máxima de permitida de passageiros sentados, inclusive
                                      motorista. (v2.0)
                                    </xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="xs:string">
                                      <xs:minLength value="1"/>
                                      <xs:maxLength value="3"/>
                                      <xs:whiteSpace value="preserve"/>
                                      <xs:pattern value="[0-9]{1,3}"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="tpRest">
                                  <xs:annotation>
                                    <xs:documentation>Restrição
                                      0 - Não há;
                                      1 - Alienação Fiduciária;
                                      2 - Arrendamento Mercantil;
                                      3 - Reserva de Domínio;
                                      4 - Penhor de Veículos;
                                      9 - outras. (v2.0)
                                    </xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="xs:string">
                                      <xs:whiteSpace value="preserve"/>
                                      <xs:enumeration value="0"/>
                                      <xs:enumeration value="1"/>
                                      <xs:enumeration value="2"/>
                                      <xs:enumeration value="3"/>
                                      <xs:enumeration value="4"/>
                                      <xs:enumeration value="9"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                              </xs:sequence>
                            </xs:complexType>
                          </xs:element>
                          <xs:element name="med" maxOccurs="unbounded">
                            <xs:annotation>
                              <xs:documentation>grupo do detalhamento de Medicamentos e de matérias-primas farmacêuticas
                              </xs:documentation>
                            </xs:annotation>
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element name="nLote">
                                  <xs:annotation>
                                    <xs:documentation>Número do lote do medicamento</xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="TString">
                                      <xs:minLength value="1"/>
                                      <xs:maxLength value="20"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="qLote" type="TDec_0803">
                                  <xs:annotation>
                                    <xs:documentation>Quantidade de produtos no lote</xs:documentation>
                                  </xs:annotation>
                                </xs:element>
                                <xs:element name="dFab" type="TData">
                                  <xs:annotation>
                                    <xs:documentation>Data de Fabricação do medicamento (AAAA-MM-DD)</xs:documentation>
                                  </xs:annotation>
                                </xs:element>
                                <xs:element name="dVal" type="TData">
                                  <xs:annotation>
                                    <xs:documentation>Data de validade do medicamento (AAAA-MM-DD)</xs:documentation>
                                  </xs:annotation>
                                </xs:element>
                                <xs:element name="vPMC" type="TDec_1302">
                                  <xs:annotation>
                                    <xs:documentation>Preço Máximo ao Consumidor</xs:documentation>
                                  </xs:annotation>
                                </xs:element>
                              </xs:sequence>
                            </xs:complexType>
                          </xs:element>
                          <xs:element name="arma" maxOccurs="unbounded">
                            <xs:annotation>
                              <xs:documentation>Armamentos</xs:documentation>
                            </xs:annotation>
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element name="tpArma">
                                  <xs:annotation>
                                    <xs:documentation>Indicador do tipo de arma de fogo (0 - Uso permitido; 1 - Uso
                                      restrito)
                                    </xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="xs:string">
                                      <xs:whiteSpace value="preserve"/>
                                      <xs:enumeration value="0"/>
                                      <xs:enumeration value="1"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="nSerie">
                                  <xs:annotation>
                                    <xs:documentation>Número de série da arma</xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="TString">
                                      <xs:minLength value="1"/>
                                      <xs:maxLength value="9"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="nCano">
                                  <xs:annotation>
                                    <xs:documentation>Número de série do cano</xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="TString">
                                      <xs:minLength value="1"/>
                                      <xs:maxLength value="9"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="descr">
                                  <xs:annotation>
                                    <xs:documentation>Descrição completa da arma, compreendendo: calibre, marca,
                                      capacidade, tipo de funcionamento, comprimento e demais elementos que permitam a
                                      sua perfeita identificação.
                                    </xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="TString">
                                      <xs:minLength value="1"/>
                                      <xs:maxLength value="256"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                              </xs:sequence>
                            </xs:complexType>
                          </xs:element>
                          <xs:element name="comb">
                            <xs:annotation>
                              <xs:documentation>Informar apenas para operações
                                com combustíveis líquidos
                              </xs:documentation>
                            </xs:annotation>
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element name="cProdANP">
                                  <xs:annotation>
                                    <xs:documentation>Código de produto da ANP. Utilizar a codificação de produtos do
                                      Sistema de Informações de Movimentação de produtos -
                                      SIMP(http://www.anp.gov.br/simp/index.h
                                      tm), somente informar 999999999 quando não se tratar de produtos não regulados
                                      pela ANP -
                                      Agência Nacional do Petróleo.
                                    </xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="xs:string">
                                      <xs:whiteSpace value="preserve"/>
                                      <xs:pattern value="[0-9]{9}"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="CODIF" minOccurs="0">
                                  <xs:annotation>
                                    <xs:documentation>Código de autorização / registro
                                      do CODIF.
                                      Informar apenas quando a UF
                                      utilizar o CODIF (Sistema de
                                      Controle do Diferimento do Imposto
                                      nas Operações com AEAC - Álcool
                                      Etílico Anidro Combustível).
                                    </xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="xs:string">
                                      <xs:whiteSpace value="preserve"/>
                                      <xs:pattern value="[0-9]{0,21}"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                                <xs:element name="qTemp" type="TDec_1204Opc" minOccurs="0">
                                  <xs:annotation>
                                    <xs:documentation>Quantidade de combustível
                                      faturada à temperatura ambiente.
                                      Informar quando a quantidade
                                      faturada informada no campo
                                      qCom (I10) tiver sido ajustada para
                                      uma temperatura diferente da
                                      ambiente.
                                    </xs:documentation>
                                  </xs:annotation>
                                </xs:element>
                                <xs:element name="UFCons" type="TUf">
                                  <xs:annotation>
                                    <xs:documentation>Sigla da UF de Consumo</xs:documentation>
                                  </xs:annotation>
                                </xs:element>
                                <xs:element name="CIDE" minOccurs="0">
                                  <xs:annotation>
                                    <xs:documentation>CIDE Combustíveis</xs:documentation>
                                  </xs:annotation>
                                  <xs:complexType>
                                    <xs:sequence>
                                      <xs:element name="qBCProd" type="TDec_1204">
                                        <xs:annotation>
                                          <xs:documentation>BC do CIDE ( Quantidade comercializada)</xs:documentation>
                                        </xs:annotation>
                                      </xs:element>
                                      <xs:element name="vAliqProd" type="TDec_1104">
                                        <xs:annotation>
                                          <xs:documentation>Alíquota do CIDE (em reais)</xs:documentation>
                                        </xs:annotation>
                                      </xs:element>
                                      <xs:element name="vCIDE" type="TDec_1302">
                                        <xs:annotation>
                                          <xs:documentation>Valor do CIDE</xs:documentation>
                                        </xs:annotation>
                                      </xs:element>
                                    </xs:sequence>
                                  </xs:complexType>
                                </xs:element>
                              </xs:sequence>
                            </xs:complexType>
                          </xs:element>
                        </xs:choice>
                      </xs:sequence>
                    </xs:complexType>
                  </xs:element>
                  <xs:element name="imposto">
                    <xs:annotation>
                      <xs:documentation>Tributos incidentes nos produtos ou serviços da NF-e</xs:documentation>
                    </xs:annotation>
                    <xs:complexType>
                      <xs:sequence>
                        <xs:choice>
                          <xs:sequence>
                            <xs:element name="ICMS">
                              <xs:annotation>
                                <xs:documentation>Dados do ICMS Normal e ST</xs:documentation>
                              </xs:annotation>
                              <xs:complexType>
                                <xs:choice>
                                  <xs:element name="ICMS00">
                                    <xs:annotation>
                                      <xs:documentation>Tributação pelo ICMS
                                        00 - Tributada integralmente
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:complexType>
                                      <xs:sequence>
                                        <xs:element name="orig" type="Torig">
                                          <xs:annotation>
                                            <xs:documentation>origem da mercadoria: 0 - Nacional
                                              1 - Estrangeira - Importação direta
                                              2 - Estrangeira - Adquirida no mercado interno
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="CST">
                                          <xs:annotation>
                                            <xs:documentation>Tributção pelo ICMS
                                              00 - Tributada integralmente
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="00"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="modBC">
                                          <xs:annotation>
                                            <xs:documentation>Modalidade de determinação da BC do ICMS:
                                              0 - Margem Valor Agregado (%);
                                              1 - Pauta (valor);
                                              2 - Preço Tabelado Máximo (valor);
                                              3 - Valor da Operação.
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="0"/>
                                              <xs:enumeration value="1"/>
                                              <xs:enumeration value="2"/>
                                              <xs:enumeration value="3"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="vBC" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor da BC do ICMS</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pICMS" type="TDec_0302">
                                          <xs:annotation>
                                            <xs:documentation>Alíquota do ICMS</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vICMS" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor do ICMS</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                      </xs:sequence>
                                    </xs:complexType>
                                  </xs:element>
                                  <xs:element name="ICMS10">
                                    <xs:annotation>
                                      <xs:documentation>Tributação pelo ICMS
                                        10 - Tributada e com cobrança do ICMS por substituição tributária
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:complexType>
                                      <xs:sequence>
                                        <xs:element name="orig" type="Torig">
                                          <xs:annotation>
                                            <xs:documentation>origem da mercadoria: 0 - Nacional
                                              1 - Estrangeira - Importação direta
                                              2 - Estrangeira - Adquirida no mercado interno
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="CST">
                                          <xs:annotation>
                                            <xs:documentation>10 - Tributada e com cobrança do ICMS por substituição
                                              tributária
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="10"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="modBC">
                                          <xs:annotation>
                                            <xs:documentation>Modalidade de determinação da BC do ICMS:
                                              0 - Margem Valor Agregado (%);
                                              1 - Pauta (valor);
                                              2 - Preço Tabelado Máximo (valor);
                                              3 - Valor da Operação.
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="0"/>
                                              <xs:enumeration value="1"/>
                                              <xs:enumeration value="2"/>
                                              <xs:enumeration value="3"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="vBC" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor da BC do ICMS</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pICMS" type="TDec_0302">
                                          <xs:annotation>
                                            <xs:documentation>Alíquota do ICMS</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vICMS" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor do ICMS</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="modBCST">
                                          <xs:annotation>
                                            <xs:documentation>Modalidade de determinação da BC do ICMS ST:
                                              0 – Preço tabelado ou máximo sugerido;
                                              1 - Lista Negativa (valor);
                                              2 - Lista Positiva (valor);
                                              3 - Lista Neutra (valor);
                                              4 - Margem Valor Agregado (%);
                                              5 - Pauta (valor);
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="0"/>
                                              <xs:enumeration value="1"/>
                                              <xs:enumeration value="2"/>
                                              <xs:enumeration value="3"/>
                                              <xs:enumeration value="4"/>
                                              <xs:enumeration value="5"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="pMVAST" type="TDec_0302Opc" minOccurs="0">
                                          <xs:annotation>
                                            <xs:documentation>Percentual da Margem de Valor Adicionado ICMS ST
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pRedBCST" type="TDec_0302Opc" minOccurs="0">
                                          <xs:annotation>
                                            <xs:documentation>Percentual de redução da BC ICMS ST</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vBCST" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor da BC do ICMS ST</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pICMSST" type="TDec_0302">
                                          <xs:annotation>
                                            <xs:documentation>Alíquota do ICMS ST</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vICMSST" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor do ICMS ST</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                      </xs:sequence>
                                    </xs:complexType>
                                  </xs:element>
                                  <xs:element name="ICMS20">
                                    <xs:annotation>
                                      <xs:documentation>Tributção pelo ICMS
                                        20 - Com redução de base de cálculo
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:complexType>
                                      <xs:sequence>
                                        <xs:element name="orig" type="Torig">
                                          <xs:annotation>
                                            <xs:documentation>origem da mercadoria: 0 - Nacional
                                              1 - Estrangeira - Importação direta
                                              2 - Estrangeira - Adquirida no mercado interno
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="CST">
                                          <xs:annotation>
                                            <xs:documentation>Tributção pelo ICMS
                                              20 - Com redução de base de cálculo
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="20"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="modBC">
                                          <xs:annotation>
                                            <xs:documentation>Modalidade de determinação da BC do ICMS:
                                              0 - Margem Valor Agregado (%);
                                              1 - Pauta (valor);
                                              2 - Preço Tabelado Máximo (valor);
                                              3 - Valor da Operação.
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="0"/>
                                              <xs:enumeration value="1"/>
                                              <xs:enumeration value="2"/>
                                              <xs:enumeration value="3"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="pRedBC" type="TDec_0302">
                                          <xs:annotation>
                                            <xs:documentation>Percentual de redução da BC</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vBC" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor da BC do ICMS</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pICMS" type="TDec_0302">
                                          <xs:annotation>
                                            <xs:documentation>Alíquota do ICMS</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vICMS" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor do ICMS</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                      </xs:sequence>
                                    </xs:complexType>
                                  </xs:element>
                                  <xs:element name="ICMS30">
                                    <xs:annotation>
                                      <xs:documentation>Tributação pelo ICMS
                                        30 - Isenta ou não tributada e com cobrança do ICMS por substituição tributária
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:complexType>
                                      <xs:sequence>
                                        <xs:element name="orig" type="Torig">
                                          <xs:annotation>
                                            <xs:documentation>origem da mercadoria: 0 - Nacional
                                              1 - Estrangeira - Importação direta
                                              2 - Estrangeira - Adquirida no mercado interno
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="CST">
                                          <xs:annotation>
                                            <xs:documentation>Tributção pelo ICMS
                                              30 - Isenta ou não tributada e com cobrança do ICMS por substituição
                                              tributária
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="30"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="modBCST">
                                          <xs:annotation>
                                            <xs:documentation>Modalidade de determinação da BC do ICMS ST:
                                              0 – Preço tabelado ou máximo sugerido;
                                              1 - Lista Negativa (valor);
                                              2 - Lista Positiva (valor);
                                              3 - Lista Neutra (valor);
                                              4 - Margem Valor Agregado (%);
                                              5 - Pauta (valor).
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="0"/>
                                              <xs:enumeration value="1"/>
                                              <xs:enumeration value="2"/>
                                              <xs:enumeration value="3"/>
                                              <xs:enumeration value="4"/>
                                              <xs:enumeration value="5"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="pMVAST" type="TDec_0302Opc" minOccurs="0">
                                          <xs:annotation>
                                            <xs:documentation>Percentual da Margem de Valor Adicionado ICMS ST
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pRedBCST" type="TDec_0302Opc" minOccurs="0">
                                          <xs:annotation>
                                            <xs:documentation>Percentual de redução da BC ICMS ST</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vBCST" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor da BC do ICMS ST</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pICMSST" type="TDec_0302">
                                          <xs:annotation>
                                            <xs:documentation>Alíquota do ICMS ST</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vICMSST" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor do ICMS ST</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                      </xs:sequence>
                                    </xs:complexType>
                                  </xs:element>
                                  <xs:element name="ICMS40">
                                    <xs:annotation>
                                      <xs:documentation>Tributação pelo ICMS
                                        40 - Isenta
                                        41 - Não tributada
                                        50 - Suspensão
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:complexType>
                                      <xs:sequence>
                                        <xs:element name="orig" type="Torig">
                                          <xs:annotation>
                                            <xs:documentation>origem da mercadoria: 0 - Nacional
                                              1 - Estrangeira - Importação direta
                                              2 - Estrangeira - Adquirida no mercado interno
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="CST">
                                          <xs:annotation>
                                            <xs:documentation>Tributação pelo ICMS
                                              40 - Isenta
                                              41 - Não tributada
                                              50 - Suspensão
                                              51 - Diferimento
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="40"/>
                                              <xs:enumeration value="41"/>
                                              <xs:enumeration value="50"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:sequence minOccurs="0">
                                          <xs:element name="vICMS" type="TDec_1302">
                                            <xs:annotation>
                                              <xs:documentation>O valor do ICMS será informado apenas nas operações com
                                                veículos beneficiados com a desoneração condicional do ICMS. (v2.0)
                                              </xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                          <xs:element name="motDesICMS">
                                            <xs:annotation>
                                              <xs:documentation>Este campo será preenchido quando o campo anterior
                                                estiver preenchido.
                                                Informar o motivo da desoneração:
                                                1 – Táxi;
                                                2 – Deficiente Físico;
                                                3 – Produtor Agropecuário;
                                                4 – Frotista/Locadora;
                                                5 – Diplomático/Consular;
                                                6 – Utilitários e Motocicletas da Amazônia Ocidental e Áreas de Livre
                                                Comércio (Resolução 714/88 e 790/94 – CONTRAN e suas alterações);
                                                7 – SUFRAMA;
                                                9 – outros. (v2.0)
                                              </xs:documentation>
                                            </xs:annotation>
                                            <xs:simpleType>
                                              <xs:restriction base="xs:string">
                                                <xs:whiteSpace value="preserve"/>
                                                <xs:enumeration value="1"/>
                                                <xs:enumeration value="2"/>
                                                <xs:enumeration value="3"/>
                                                <xs:enumeration value="4"/>
                                                <xs:enumeration value="5"/>
                                                <xs:enumeration value="6"/>
                                                <xs:enumeration value="7"/>
                                                <xs:enumeration value="9"/>
                                              </xs:restriction>
                                            </xs:simpleType>
                                          </xs:element>
                                        </xs:sequence>
                                      </xs:sequence>
                                    </xs:complexType>
                                  </xs:element>
                                  <xs:element name="ICMS51">
                                    <xs:annotation>
                                      <xs:documentation>Tributção pelo ICMS
                                        51 - Diferimento
                                        A exigência do preenchimento das informações do ICMS diferido fica à critério de
                                        cada UF.
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:complexType>
                                      <xs:sequence>
                                        <xs:element name="orig" type="Torig">
                                          <xs:annotation>
                                            <xs:documentation>origem da mercadoria: 0 - Nacional
                                              1 - Estrangeira - Importação direta
                                              2 - Estrangeira - Adquirida no mercado interno
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="CST">
                                          <xs:annotation>
                                            <xs:documentation>Tributção pelo ICMS
                                              20 - Com redução de base de cálculo
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="51"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="modBC" minOccurs="0">
                                          <xs:annotation>
                                            <xs:documentation>Modalidade de determinação da BC do ICMS:
                                              0 - Margem Valor Agregado (%);
                                              1 - Pauta (valor);
                                              2 - Preço Tabelado Máximo (valor);
                                              3 - Valor da Operação.
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="0"/>
                                              <xs:enumeration value="1"/>
                                              <xs:enumeration value="2"/>
                                              <xs:enumeration value="3"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="pRedBC" type="TDec_0302" minOccurs="0">
                                          <xs:annotation>
                                            <xs:documentation>Percentual de redução da BC</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vBC" type="TDec_1302" minOccurs="0">
                                          <xs:annotation>
                                            <xs:documentation>Valor da BC do ICMS</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pICMS" type="TDec_0302" minOccurs="0">
                                          <xs:annotation>
                                            <xs:documentation>Alíquota do ICMS</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vICMS" type="TDec_1302" minOccurs="0">
                                          <xs:annotation>
                                            <xs:documentation>Valor do ICMS</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                      </xs:sequence>
                                    </xs:complexType>
                                  </xs:element>
                                  <xs:element name="ICMS60">
                                    <xs:annotation>
                                      <xs:documentation>Tributação pelo ICMS
                                        60 - ICMS cobrado anteriormente por substituição tributária
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:complexType>
                                      <xs:sequence>
                                        <xs:element name="orig" type="Torig">
                                          <xs:annotation>
                                            <xs:documentation>origem da mercadoria: 0 - Nacional
                                              1 - Estrangeira - Importação direta
                                              2 - Estrangeira - Adquirida no mercado interno
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="CST">
                                          <xs:annotation>
                                            <xs:documentation>Tributação pelo ICMS
                                              60 - ICMS cobrado anteriormente por substituição tributária
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="60"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="vBCSTRet" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor da BC do ICMS ST retido anteriormente (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vICMSSTRet" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor do ICMS ST retido anteriormente (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                      </xs:sequence>
                                    </xs:complexType>
                                  </xs:element>
                                  <xs:element name="ICMS70">
                                    <xs:annotation>
                                      <xs:documentation>Tributação pelo ICMS
                                        70 - Com redução de base de cálculo e cobrança do ICMS por substituição
                                        tributária
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:complexType>
                                      <xs:sequence>
                                        <xs:element name="orig" type="Torig">
                                          <xs:annotation>
                                            <xs:documentation>origem da mercadoria: 0 - Nacional
                                              1 - Estrangeira - Importação direta
                                              2 - Estrangeira - Adquirida no mercado interno
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="CST">
                                          <xs:annotation>
                                            <xs:documentation>Tributção pelo ICMS
                                              70 - Com redução de base de cálculo e cobrança do ICMS por substituição
                                              tributária
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="70"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="modBC">
                                          <xs:annotation>
                                            <xs:documentation>Modalidade de determinação da BC do ICMS:
                                              0 - Margem Valor Agregado (%);
                                              1 - Pauta (valor);
                                              2 - Preço Tabelado Máximo (valor);
                                              3 - Valor da Operação.
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="0"/>
                                              <xs:enumeration value="1"/>
                                              <xs:enumeration value="2"/>
                                              <xs:enumeration value="3"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="pRedBC" type="TDec_0302">
                                          <xs:annotation>
                                            <xs:documentation>Percentual de redução da BC</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vBC" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor da BC do ICMS</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pICMS" type="TDec_0302">
                                          <xs:annotation>
                                            <xs:documentation>Alíquota do ICMS</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vICMS" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor do ICMS</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="modBCST">
                                          <xs:annotation>
                                            <xs:documentation>Modalidade de determinação da BC do ICMS ST:
                                              0 – Preço tabelado ou máximo sugerido;
                                              1 - Lista Negativa (valor);
                                              2 - Lista Positiva (valor);
                                              3 - Lista Neutra (valor);
                                              4 - Margem Valor Agregado (%);
                                              5 - Pauta (valor).
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="0"/>
                                              <xs:enumeration value="1"/>
                                              <xs:enumeration value="2"/>
                                              <xs:enumeration value="3"/>
                                              <xs:enumeration value="4"/>
                                              <xs:enumeration value="5"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="pMVAST" type="TDec_0302Opc" minOccurs="0">
                                          <xs:annotation>
                                            <xs:documentation>Percentual da Margem de Valor Adicionado ICMS ST
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pRedBCST" type="TDec_0302Opc" minOccurs="0">
                                          <xs:annotation>
                                            <xs:documentation>Percentual de redução da BC ICMS ST</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vBCST" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor da BC do ICMS ST</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pICMSST" type="TDec_0302">
                                          <xs:annotation>
                                            <xs:documentation>Alíquota do ICMS ST</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vICMSST" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor do ICMS ST</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                      </xs:sequence>
                                    </xs:complexType>
                                  </xs:element>
                                  <xs:element name="ICMS90">
                                    <xs:annotation>
                                      <xs:documentation>Tributação pelo ICMS
                                        90 - Outras
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:complexType>
                                      <xs:sequence>
                                        <xs:element name="orig" type="Torig">
                                          <xs:annotation>
                                            <xs:documentation>origem da mercadoria: 0 - Nacional
                                              1 - Estrangeira - Importação direta
                                              2 - Estrangeira - Adquirida no mercado interno
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="CST">
                                          <xs:annotation>
                                            <xs:documentation>Tributção pelo ICMS
                                              90 - Outras
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="90"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:sequence minOccurs="0">
                                          <xs:element name="modBC">
                                            <xs:annotation>
                                              <xs:documentation>Modalidade de determinação da BC do ICMS:
                                                0 - Margem Valor Agregado (%);
                                                1 - Pauta (valor);
                                                2 - Preço Tabelado Máximo (valor);
                                                3 - Valor da Operação.
                                              </xs:documentation>
                                            </xs:annotation>
                                            <xs:simpleType>
                                              <xs:restriction base="xs:string">
                                                <xs:whiteSpace value="preserve"/>
                                                <xs:enumeration value="0"/>
                                                <xs:enumeration value="1"/>
                                                <xs:enumeration value="2"/>
                                                <xs:enumeration value="3"/>
                                              </xs:restriction>
                                            </xs:simpleType>
                                          </xs:element>
                                          <xs:element name="vBC" type="TDec_1302">
                                            <xs:annotation>
                                              <xs:documentation>Valor da BC do ICMS</xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                          <xs:element name="pRedBC" type="TDec_0302Opc" minOccurs="0">
                                            <xs:annotation>
                                              <xs:documentation>Percentual de redução da BC</xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                          <xs:element name="pICMS" type="TDec_0302">
                                            <xs:annotation>
                                              <xs:documentation>Alíquota do ICMS</xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                          <xs:element name="vICMS" type="TDec_1302">
                                            <xs:annotation>
                                              <xs:documentation>Valor do ICMS</xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                        </xs:sequence>
                                        <xs:sequence minOccurs="0">
                                          <xs:element name="modBCST">
                                            <xs:annotation>
                                              <xs:documentation>Modalidade de determinação da BC do ICMS ST:
                                                0 – Preço tabelado ou máximo sugerido;
                                                1 - Lista Negativa (valor);
                                                2 - Lista Positiva (valor);
                                                3 - Lista Neutra (valor);
                                                4 - Margem Valor Agregado (%);
                                                5 - Pauta (valor).
                                              </xs:documentation>
                                            </xs:annotation>
                                            <xs:simpleType>
                                              <xs:restriction base="xs:string">
                                                <xs:whiteSpace value="preserve"/>
                                                <xs:enumeration value="0"/>
                                                <xs:enumeration value="1"/>
                                                <xs:enumeration value="2"/>
                                                <xs:enumeration value="3"/>
                                                <xs:enumeration value="4"/>
                                                <xs:enumeration value="5"/>
                                              </xs:restriction>
                                            </xs:simpleType>
                                          </xs:element>
                                          <xs:element name="pMVAST" type="TDec_0302Opc" minOccurs="0">
                                            <xs:annotation>
                                              <xs:documentation>Percentual da Margem de Valor Adicionado ICMS ST
                                              </xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                          <xs:element name="pRedBCST" type="TDec_0302Opc" minOccurs="0">
                                            <xs:annotation>
                                              <xs:documentation>Percentual de redução da BC ICMS ST</xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                          <xs:element name="vBCST" type="TDec_1302">
                                            <xs:annotation>
                                              <xs:documentation>Valor da BC do ICMS ST</xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                          <xs:element name="pICMSST" type="TDec_0302">
                                            <xs:annotation>
                                              <xs:documentation>Alíquota do ICMS ST</xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                          <xs:element name="vICMSST" type="TDec_1302">
                                            <xs:annotation>
                                              <xs:documentation>Valor do ICMS ST</xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                        </xs:sequence>
                                      </xs:sequence>
                                    </xs:complexType>
                                  </xs:element>
                                  <xs:element name="ICMSPart">
                                    <xs:annotation>
                                      <xs:documentation>Partilha do ICMS entre a UF de origem e UF de destino ou a UF
                                        definida na legislação
                                        Operação interestadual para consumidor final com partilha do ICMS devido na
                                        operação entre a UF de origem e a UF do destinatário ou ou a UF definida na
                                        legislação. (Ex. UF da concessionária de entrega do veículos) (v2.0)
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:complexType>
                                      <xs:sequence>
                                        <xs:element name="orig" type="Torig">
                                          <xs:annotation>
                                            <xs:documentation>origem da mercadoria: 0 - Nacional
                                              1 - Estrangeira - Importação direta
                                              2 - Estrangeira - Adquirida no mercado interno
                                              (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="CST">
                                          <xs:annotation>
                                            <xs:documentation>Tributação pelo ICMS
                                              10 - Tributada e com cobrança do ICMS por substituição tributária;
                                              90 – Outros.
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="10"/>
                                              <xs:enumeration value="90"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="modBC">
                                          <xs:annotation>
                                            <xs:documentation>Modalidade de determinação da BC do ICMS:
                                              0 - Margem Valor Agregado (%);
                                              1 - Pauta (valor);
                                              2 - Preço Tabelado Máximo (valor);
                                              3 - Valor da Operação. (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="0"/>
                                              <xs:enumeration value="1"/>
                                              <xs:enumeration value="2"/>
                                              <xs:enumeration value="3"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="vBC" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor da BC do ICMS (v2.0)</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pRedBC" type="TDec_0302Opc" minOccurs="0">
                                          <xs:annotation>
                                            <xs:documentation>Percentual de redução da BC (v2.0)</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pICMS" type="TDec_0302">
                                          <xs:annotation>
                                            <xs:documentation>Alíquota do ICMS (v2.0)</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vICMS" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor do ICMS (v2.0)</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="modBCST">
                                          <xs:annotation>
                                            <xs:documentation>Modalidade de determinação da BC do ICMS ST:
                                              0 – Preço tabelado ou máximo sugerido;
                                              1 - Lista Negativa (valor);
                                              2 - Lista Positiva (valor);
                                              3 - Lista Neutra (valor);
                                              4 - Margem Valor Agregado (%);
                                              5 - Pauta (valor). (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="0"/>
                                              <xs:enumeration value="1"/>
                                              <xs:enumeration value="2"/>
                                              <xs:enumeration value="3"/>
                                              <xs:enumeration value="4"/>
                                              <xs:enumeration value="5"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="pMVAST" type="TDec_0302Opc" minOccurs="0">
                                          <xs:annotation>
                                            <xs:documentation>Percentual da Margem de Valor Adicionado ICMS ST (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pRedBCST" type="TDec_0302Opc" minOccurs="0">
                                          <xs:annotation>
                                            <xs:documentation>Percentual de redução da BC ICMS ST (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vBCST" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor da BC do ICMS ST (v2.0)</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pICMSST" type="TDec_0302">
                                          <xs:annotation>
                                            <xs:documentation>Alíquota do ICMS ST (v2.0)</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vICMSST" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor do ICMS ST (v2.0)</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pBCOp" type="TDec_0302Opc">
                                          <xs:annotation>
                                            <xs:documentation>Percentual para determinação do valor da Base de Cálculo
                                              da operação própria. (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="UFST" type="TUf">
                                          <xs:annotation>
                                            <xs:documentation>Sigla da UF para qual é devido o ICMS ST da operação.
                                              (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                      </xs:sequence>
                                    </xs:complexType>
                                  </xs:element>
                                  <xs:element name="ICMSST">
                                    <xs:annotation>
                                      <xs:documentation>Grupo de informação do ICMSST devido para a UF de destino, nas
                                        operações interestaduais de produtos que tiveram retenção antecipada de ICMS por
                                        ST na UF do remetente. Repasse via Substituto Tributário. (v2.0)
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:complexType>
                                      <xs:sequence>
                                        <xs:element name="orig" type="Torig">
                                          <xs:annotation>
                                            <xs:documentation>origem da mercadoria: 0 - Nacional
                                              1 - Estrangeira - Importação direta
                                              2 - Estrangeira - Adquirida no mercado interno
                                              (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="CST">
                                          <xs:annotation>
                                            <xs:documentation>Tributção pelo ICMS
                                              41-Não Tributado (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="41"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="vBCSTRet" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Informar o valor da BC do ICMS ST retido na UF remetente
                                              (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vICMSSTRet" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Informar o valor do ICMS ST retido na UF remetente
                                              (iv2.0))
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vBCSTDest" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Informar o valor da BC do ICMS ST da UF destino (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vICMSSTDest" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Informar o valor da BC do ICMS ST da UF destino (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                      </xs:sequence>
                                    </xs:complexType>
                                  </xs:element>
                                  <xs:element name="ICMSSN101">
                                    <xs:annotation>
                                      <xs:documentation>Tributação do ICMS pelo SIMPLES NACIONAL e CSOSN=101 (v.2.0)
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:complexType>
                                      <xs:sequence>
                                        <xs:element name="orig" type="Torig">
                                          <xs:annotation>
                                            <xs:documentation>origem da mercadoria: 0 - Nacional
                                              1 - Estrangeira - Importação direta
                                              2 - Estrangeira - Adquirida no mercado interno
                                              (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="CSOSN">
                                          <xs:annotation>
                                            <xs:documentation>101- Tributada pelo Simples Nacional com permissão de
                                              crédito. (v.2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="101"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="pCredSN" type="TDec_0302">
                                          <xs:annotation>
                                            <xs:documentation>Alíquota aplicável de cálculo do crédito (Simples
                                              Nacional). (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vCredICMSSN" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor crédito do ICMS que pode ser aproveitado nos termos
                                              do art. 23 da LC 123 (Simples Nacional) (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                      </xs:sequence>
                                    </xs:complexType>
                                  </xs:element>
                                  <xs:element name="ICMSSN102">
                                    <xs:annotation>
                                      <xs:documentation>Tributação do ICMS pelo SIMPLES NACIONAL e CSOSN=102, 103, 300
                                        ou 400 (v.2.0))
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:complexType>
                                      <xs:sequence>
                                        <xs:element name="orig" type="Torig">
                                          <xs:annotation>
                                            <xs:documentation>origem da mercadoria: 0 - Nacional
                                              1 - Estrangeira - Importação direta
                                              2 - Estrangeira - Adquirida no mercado interno
                                              (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="CSOSN">
                                          <xs:annotation>
                                            <xs:documentation>102- Tributada pelo Simples Nacional sem permissão de
                                              crédito.
                                              103 – Isenção do ICMS no Simples Nacional para faixa de receita bruta.
                                              300 – Imune.
                                              400 – Não tributda pelo Simples Nacional (v.2.0) (v.2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="102"/>
                                              <xs:enumeration value="103"/>
                                              <xs:enumeration value="300"/>
                                              <xs:enumeration value="400"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                      </xs:sequence>
                                    </xs:complexType>
                                  </xs:element>
                                  <xs:element name="ICMSSN201">
                                    <xs:annotation>
                                      <xs:documentation>Tributação do ICMS pelo SIMPLES NACIONAL e CSOSN=201 (v.2.0)
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:complexType>
                                      <xs:sequence>
                                        <xs:element name="orig" type="Torig">
                                          <xs:annotation>
                                            <xs:documentation>Origem da mercadoria:
                                              0 – Nacional;
                                              1 – Estrangeira – Importação direta;
                                              2 – Estrangeira – Adquirida no mercado interno. (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="CSOSN">
                                          <xs:annotation>
                                            <xs:documentation>201- Tributada pelo Simples Nacional com permissão de
                                              crédito e com cobrança do ICMS por Substituição Tributária (v.2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="201"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="modBCST">
                                          <xs:annotation>
                                            <xs:documentation>Modalidade de determinação da BC do ICMS ST:
                                              0 – Preço tabelado ou máximo sugerido;
                                              1 - Lista Negativa (valor);
                                              2 - Lista Positiva (valor);
                                              3 - Lista Neutra (valor);
                                              4 - Margem Valor Agregado (%);
                                              5 - Pauta (valor). (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="0"/>
                                              <xs:enumeration value="1"/>
                                              <xs:enumeration value="2"/>
                                              <xs:enumeration value="3"/>
                                              <xs:enumeration value="4"/>
                                              <xs:enumeration value="5"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="pMVAST" type="TDec_0302Opc" minOccurs="0">
                                          <xs:annotation>
                                            <xs:documentation>Percentual da Margem de Valor Adicionado ICMS ST (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pRedBCST" type="TDec_0302Opc" minOccurs="0">
                                          <xs:annotation>
                                            <xs:documentation>Percentual de redução da BC ICMS ST (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vBCST" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor da BC do ICMS ST (v2.0)</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pICMSST" type="TDec_0302">
                                          <xs:annotation>
                                            <xs:documentation>Alíquota do ICMS ST (v2.0)</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vICMSST" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor do ICMS ST (v2.0)</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pCredSN" type="TDec_0302">
                                          <xs:annotation>
                                            <xs:documentation>Alíquota aplicável de cálculo do crédito (Simples
                                              Nacional). (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vCredICMSSN" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor crédito do ICMS que pode ser aproveitado nos termos
                                              do art. 23 da LC 123 (Simples Nacional) (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                      </xs:sequence>
                                    </xs:complexType>
                                  </xs:element>
                                  <xs:element name="ICMSSN202">
                                    <xs:annotation>
                                      <xs:documentation>Tributação do ICMS pelo SIMPLES NACIONAL e CSOSN=202 ou 203
                                        (v.2.0)
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:complexType>
                                      <xs:sequence>
                                        <xs:element name="orig" type="Torig">
                                          <xs:annotation>
                                            <xs:documentation>Origem da mercadoria:
                                              0 – Nacional;
                                              1 – Estrangeira – Importação direta;
                                              2 – Estrangeira – Adquirida no mercado interno. (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="CSOSN">
                                          <xs:annotation>
                                            <xs:documentation>202- Tributada pelo Simples Nacional sem permissão de
                                              crédito e com cobrança do ICMS por Substituição Tributária;
                                              203- Isenção do ICMS nos Simples Nacional para faixa de receita bruta e
                                              com cobrança do ICMS por Substituição Tributária (v.2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="202"/>
                                              <xs:enumeration value="203"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="modBCST">
                                          <xs:annotation>
                                            <xs:documentation>Modalidade de determinação da BC do ICMS ST:
                                              0 – Preço tabelado ou máximo sugerido;
                                              1 - Lista Negativa (valor);
                                              2 - Lista Positiva (valor);
                                              3 - Lista Neutra (valor);
                                              4 - Margem Valor Agregado (%);
                                              5 - Pauta (valor). (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="0"/>
                                              <xs:enumeration value="1"/>
                                              <xs:enumeration value="2"/>
                                              <xs:enumeration value="3"/>
                                              <xs:enumeration value="4"/>
                                              <xs:enumeration value="5"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="pMVAST" type="TDec_0302Opc" minOccurs="0">
                                          <xs:annotation>
                                            <xs:documentation>Percentual da Margem de Valor Adicionado ICMS ST (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pRedBCST" type="TDec_0302Opc" minOccurs="0">
                                          <xs:annotation>
                                            <xs:documentation>Percentual de redução da BC ICMS ST (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vBCST" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor da BC do ICMS ST (v2.0)</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pICMSST" type="TDec_0302">
                                          <xs:annotation>
                                            <xs:documentation>Alíquota do ICMS ST (v2.0)</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vICMSST" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor do ICMS ST (v2.0)</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                      </xs:sequence>
                                    </xs:complexType>
                                  </xs:element>
                                  <xs:element name="ICMSSN500">
                                    <xs:annotation>
                                      <xs:documentation>Tributação do ICMS pelo SIMPLES NACIONAL,CRT=1 – Simples
                                        Nacional e CSOSN=500 (v.2.0)
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:complexType>
                                      <xs:sequence>
                                        <xs:element name="orig" type="Torig">
                                          <xs:annotation>
                                            <xs:documentation>origem da mercadoria: 0 - Nacional
                                              1 - Estrangeira - Importação direta
                                              2 - Estrangeira - Adquirida no mercado interno
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="CSOSN">
                                          <xs:annotation>
                                            <xs:documentation>500 – ICMS cobrado anterirmente por substituição
                                              tributária (substituído) ou por antecipação
                                              (v.2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="500"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:element name="vBCSTRet" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor da BC do ICMS ST retido anteriormente (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vICMSSTRet" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor do ICMS ST retido anteriormente (v2.0)
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                      </xs:sequence>
                                    </xs:complexType>
                                  </xs:element>
                                  <xs:element name="ICMSSN900">
                                    <xs:annotation>
                                      <xs:documentation>Tributação do ICMS pelo SIMPLES NACIONAL, CRT=1 – Simples
                                        Nacional e CSOSN=900 (v2.0)
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:complexType>
                                      <xs:sequence>
                                        <xs:element name="orig" type="Torig">
                                          <xs:annotation>
                                            <xs:documentation>origem da mercadoria: 0 - Nacional
                                              1 - Estrangeira - Importação direta
                                              2 - Estrangeira - Adquirida no mercado interno
                                            </xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="CSOSN">
                                          <xs:annotation>
                                            <xs:documentation>Tributação pelo ICMS 900 - Outros(v2.0)</xs:documentation>
                                          </xs:annotation>
                                          <xs:simpleType>
                                            <xs:restriction base="xs:string">
                                              <xs:whiteSpace value="preserve"/>
                                              <xs:enumeration value="900"/>
                                            </xs:restriction>
                                          </xs:simpleType>
                                        </xs:element>
                                        <xs:sequence minOccurs="0">
                                          <xs:element name="modBC">
                                            <xs:annotation>
                                              <xs:documentation>Modalidade de determinação da BC do ICMS:
                                                0 - Margem Valor Agregado (%);
                                                1 - Pauta (valor);
                                                2 - Preço Tabelado Máximo (valor);
                                                3 - Valor da Operação.
                                              </xs:documentation>
                                            </xs:annotation>
                                            <xs:simpleType>
                                              <xs:restriction base="xs:string">
                                                <xs:whiteSpace value="preserve"/>
                                                <xs:enumeration value="0"/>
                                                <xs:enumeration value="1"/>
                                                <xs:enumeration value="2"/>
                                                <xs:enumeration value="3"/>
                                              </xs:restriction>
                                            </xs:simpleType>
                                          </xs:element>
                                          <xs:element name="vBC" type="TDec_1302">
                                            <xs:annotation>
                                              <xs:documentation>Valor da BC do ICMS</xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                          <xs:element name="pRedBC" type="TDec_0302Opc" minOccurs="0">
                                            <xs:annotation>
                                              <xs:documentation>Percentual de redução da BC</xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                          <xs:element name="pICMS" type="TDec_0302">
                                            <xs:annotation>
                                              <xs:documentation>Alíquota do ICMS</xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                          <xs:element name="vICMS" type="TDec_1302">
                                            <xs:annotation>
                                              <xs:documentation>Valor do ICMS</xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                        </xs:sequence>
                                        <xs:sequence minOccurs="0">
                                          <xs:element name="modBCST">
                                            <xs:annotation>
                                              <xs:documentation>Modalidade de determinação da BC do ICMS ST:
                                                0 – Preço tabelado ou máximo sugerido;
                                                1 - Lista Negativa (valor);
                                                2 - Lista Positiva (valor);
                                                3 - Lista Neutra (valor);
                                                4 - Margem Valor Agregado (%);
                                                5 - Pauta (valor).
                                              </xs:documentation>
                                            </xs:annotation>
                                            <xs:simpleType>
                                              <xs:restriction base="xs:string">
                                                <xs:whiteSpace value="preserve"/>
                                                <xs:enumeration value="0"/>
                                                <xs:enumeration value="1"/>
                                                <xs:enumeration value="2"/>
                                                <xs:enumeration value="3"/>
                                                <xs:enumeration value="4"/>
                                                <xs:enumeration value="5"/>
                                              </xs:restriction>
                                            </xs:simpleType>
                                          </xs:element>
                                          <xs:element name="pMVAST" type="TDec_0302Opc" minOccurs="0">
                                            <xs:annotation>
                                              <xs:documentation>Percentual da Margem de Valor Adicionado ICMS ST
                                              </xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                          <xs:element name="pRedBCST" type="TDec_0302Opc" minOccurs="0">
                                            <xs:annotation>
                                              <xs:documentation>Percentual de redução da BC ICMS ST</xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                          <xs:element name="vBCST" type="TDec_1302">
                                            <xs:annotation>
                                              <xs:documentation>Valor da BC do ICMS ST</xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                          <xs:element name="pICMSST" type="TDec_0302">
                                            <xs:annotation>
                                              <xs:documentation>Alíquota do ICMS ST</xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                          <xs:element name="vICMSST" type="TDec_1302">
                                            <xs:annotation>
                                              <xs:documentation>Valor do ICMS ST</xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                        </xs:sequence>
                                        <xs:sequence minOccurs="0">
                                          <xs:element name="pCredSN" type="TDec_0302">
                                            <xs:annotation>
                                              <xs:documentation>Alíquota aplicável de cálculo do crédito (Simples
                                                Nacional). (v2.0)
                                              </xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                          <xs:element name="vCredICMSSN" type="TDec_1302">
                                            <xs:annotation>
                                              <xs:documentation>Valor crédito do ICMS que pode ser aproveitado nos
                                                termos do art. 23 da LC 123 (Simples Nacional) (v2.0)
                                              </xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                        </xs:sequence>
                                      </xs:sequence>
                                    </xs:complexType>
                                  </xs:element>
                                </xs:choice>
                              </xs:complexType>
                            </xs:element>
                            <xs:element name="IPI" minOccurs="0">
                              <xs:annotation>
                                <xs:documentation>Dados do IPI</xs:documentation>
                              </xs:annotation>
                              <xs:complexType>
                                <xs:sequence>
                                  <xs:element name="clEnq" minOccurs="0">
                                    <xs:annotation>
                                      <xs:documentation>Classe de Enquadramento do IPI para Cigarros e Bebidas
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:simpleType>
                                      <xs:restriction base="TString">
                                        <xs:minLength value="1"/>
                                        <xs:maxLength value="5"/>
                                      </xs:restriction>
                                    </xs:simpleType>
                                  </xs:element>
                                  <xs:element name="CNPJProd" type="TCnpj" minOccurs="0">
                                    <xs:annotation>
                                      <xs:documentation>CNPJ do produtor da mercadoria, quando diferente do emitente.
                                        Somente para os casos de exportação direta ou indireta.
                                      </xs:documentation>
                                    </xs:annotation>
                                  </xs:element>
                                  <xs:element name="cSelo" minOccurs="0">
                                    <xs:annotation>
                                      <xs:documentation>Código do selo de controle do IPI</xs:documentation>
                                    </xs:annotation>
                                    <xs:simpleType>
                                      <xs:restriction base="TString">
                                        <xs:minLength value="1"/>
                                        <xs:maxLength value="60"/>
                                      </xs:restriction>
                                    </xs:simpleType>
                                  </xs:element>
                                  <xs:element name="qSelo" minOccurs="0">
                                    <xs:annotation>
                                      <xs:documentation>Quantidade de selo de controle do IPI</xs:documentation>
                                    </xs:annotation>
                                    <xs:simpleType>
                                      <xs:restriction base="xs:string">
                                        <xs:whiteSpace value="preserve"/>
                                        <xs:pattern value="[0-9]{1,12}"/>
                                      </xs:restriction>
                                    </xs:simpleType>
                                  </xs:element>
                                  <xs:element name="cEnq">
                                    <xs:annotation>
                                      <xs:documentation>Código de Enquadramento Legal do IPI (tabela a ser criada pela
                                        RFB)
                                      </xs:documentation>
                                    </xs:annotation>
                                    <xs:simpleType>
                                      <xs:restriction base="TString">
                                        <xs:minLength value="1"/>
                                        <xs:maxLength value="3"/>
                                      </xs:restriction>
                                    </xs:simpleType>
                                  </xs:element>
                                  <xs:choice>
                                    <xs:element name="IPITrib">
                                      <xs:complexType>
                                        <xs:sequence>
                                          <xs:element name="CST">
                                            <xs:annotation>
                                              <xs:documentation>Código da Situação Tributária do IPI:
                                                00-Entrada com recuperação de crédito
                                                49 - Outras entradas
                                                50-Saída tributada
                                                99-Outras saídas
                                              </xs:documentation>
                                            </xs:annotation>
                                            <xs:simpleType>
                                              <xs:restriction base="xs:string">
                                                <xs:whiteSpace value="preserve"/>
                                                <xs:enumeration value="00"/>
                                                <xs:enumeration value="49"/>
                                                <xs:enumeration value="50"/>
                                                <xs:enumeration value="99"/>
                                              </xs:restriction>
                                            </xs:simpleType>
                                          </xs:element>
                                          <xs:choice>
                                            <xs:sequence>
                                              <xs:element name="vBC" type="TDec_1302">
                                                <xs:annotation>
                                                  <xs:documentation>Valor da BC do IPI</xs:documentation>
                                                </xs:annotation>
                                              </xs:element>
                                              <xs:element name="pIPI" type="TDec_0302">
                                                <xs:annotation>
                                                  <xs:documentation>Alíquota do IPI</xs:documentation>
                                                </xs:annotation>
                                              </xs:element>
                                            </xs:sequence>
                                            <xs:sequence>
                                              <xs:element name="qUnid" type="TDec_1204">
                                                <xs:annotation>
                                                  <xs:documentation>Quantidade total na unidade padrão para tributação
                                                  </xs:documentation>
                                                </xs:annotation>
                                              </xs:element>
                                              <xs:element name="vUnid" type="TDec_1104">
                                                <xs:annotation>
                                                  <xs:documentation>Valor por Unidade Tributável. Informar o valor do
                                                    imposto Pauta por unidade de medida.
                                                  </xs:documentation>
                                                </xs:annotation>
                                              </xs:element>
                                            </xs:sequence>
                                          </xs:choice>
                                          <xs:element name="vIPI" type="TDec_1302">
                                            <xs:annotation>
                                              <xs:documentation>Valor do IPI</xs:documentation>
                                            </xs:annotation>
                                          </xs:element>
                                        </xs:sequence>
                                      </xs:complexType>
                                    </xs:element>
                                    <xs:element name="IPINT">
                                      <xs:complexType>
                                        <xs:sequence>
                                          <xs:element name="CST">
                                            <xs:annotation>
                                              <xs:documentation>Código da Situação Tributária do IPI:
                                                01-Entrada tributada com alíquota zero
                                                02-Entrada isenta
                                                03-Entrada não-tributada
                                                04-Entrada imune
                                                05-Entrada com suspensão
                                                51-Saída tributada com alíquota zero
                                                52-Saída isenta
                                                53-Saída não-tributada
                                                54-Saída imune
                                                55-Saída com suspensão
                                              </xs:documentation>
                                            </xs:annotation>
                                            <xs:simpleType>
                                              <xs:restriction base="xs:string">
                                                <xs:whiteSpace value="preserve"/>
                                                <xs:enumeration value="01"/>
                                                <xs:enumeration value="02"/>
                                                <xs:enumeration value="03"/>
                                                <xs:enumeration value="04"/>
                                                <xs:enumeration value="05"/>
                                                <xs:enumeration value="51"/>
                                                <xs:enumeration value="52"/>
                                                <xs:enumeration value="53"/>
                                                <xs:enumeration value="54"/>
                                                <xs:enumeration value="55"/>
                                              </xs:restriction>
                                            </xs:simpleType>
                                          </xs:element>
                                        </xs:sequence>
                                      </xs:complexType>
                                    </xs:element>
                                  </xs:choice>
                                </xs:sequence>
                              </xs:complexType>
                            </xs:element>
                            <xs:element name="II" minOccurs="0">
                              <xs:annotation>
                                <xs:documentation>Dados do Imposto de Importação</xs:documentation>
                              </xs:annotation>
                              <xs:complexType>
                                <xs:sequence>
                                  <xs:element name="vBC" type="TDec_1302">
                                    <xs:annotation>
                                      <xs:documentation>Base da BC do Imposto de Importação</xs:documentation>
                                    </xs:annotation>
                                  </xs:element>
                                  <xs:element name="vDespAdu" type="TDec_1302">
                                    <xs:annotation>
                                      <xs:documentation>Valor das despesas aduaneiras</xs:documentation>
                                    </xs:annotation>
                                  </xs:element>
                                  <xs:element name="vII" type="TDec_1302">
                                    <xs:annotation>
                                      <xs:documentation>Valor do Imposto de Importação</xs:documentation>
                                    </xs:annotation>
                                  </xs:element>
                                  <xs:element name="vIOF" type="TDec_1302">
                                    <xs:annotation>
                                      <xs:documentation>Valor do Imposto sobre Operações Financeiras</xs:documentation>
                                    </xs:annotation>
                                  </xs:element>
                                </xs:sequence>
                              </xs:complexType>
                            </xs:element>
                          </xs:sequence>
                          <xs:element name="ISSQN">
                            <xs:annotation>
                              <xs:documentation>ISSQN</xs:documentation>
                            </xs:annotation>
                            <xs:complexType>
                              <xs:sequence>
                                <xs:element name="vBC" type="TDec_1302">
                                  <xs:annotation>
                                    <xs:documentation>Valor da BC do ISSQN</xs:documentation>
                                  </xs:annotation>
                                </xs:element>
                                <xs:element name="vAliq" type="TDec_0302">
                                  <xs:annotation>
                                    <xs:documentation>Alíquota do ISSQN</xs:documentation>
                                  </xs:annotation>
                                </xs:element>
                                <xs:element name="vISSQN" type="TDec_1302">
                                  <xs:annotation>
                                    <xs:documentation>Valor da do ISSQN</xs:documentation>
                                  </xs:annotation>
                                </xs:element>
                                <xs:element name="cMunFG" type="TCodMunIBGE">
                                  <xs:annotation>
                                    <xs:documentation>Informar o município de ocorrência do fato gerador do ISSQN.
                                      Utilizar a Tabela do IBGE (Anexo VII - Tabela de UF, Município e País). “Atenção,
                                      não vincular com os campos B12, C10 ou E10” v2.0
                                    </xs:documentation>
                                  </xs:annotation>
                                </xs:element>
                                <xs:element name="cListServ" type="TCListServ">
                                  <xs:annotation>
                                    <xs:documentation>Informar o Item da lista de serviços da LC 116/03 em que se
                                      classifica o serviço.
                                    </xs:documentation>
                                  </xs:annotation>
                                </xs:element>
                                <xs:element name="cSitTrib">
                                  <xs:annotation>
                                    <xs:documentation>Informar o código da tributação do ISSQN:
                                      N – NORMAL;
                                      R – RETIDA;
                                      S –SUBSTITUTA;
                                      I – ISENTA. (v.2.0)
                                    </xs:documentation>
                                  </xs:annotation>
                                  <xs:simpleType>
                                    <xs:restriction base="xs:string">
                                      <xs:whiteSpace value="preserve"/>
                                      <xs:enumeration value="N"/>
                                      <xs:enumeration value="R"/>
                                      <xs:enumeration value="S"/>
                                      <xs:enumeration value="I"/>
                                    </xs:restriction>
                                  </xs:simpleType>
                                </xs:element>
                              </xs:sequence>
                            </xs:complexType>
                          </xs:element>
                        </xs:choice>
                        <xs:element name="PIS">
                          <xs:annotation>
                            <xs:documentation>Dados do PIS</xs:documentation>
                          </xs:annotation>
                          <xs:complexType>
                            <xs:choice>
                              <xs:element name="PISAliq">
                                <xs:annotation>
                                  <xs:documentation>Código de Situação Tributária do PIS.
                                    01 – Operação Tributável - Base de Cálculo = Valor da Operação Alíquota Normal
                                    (Cumulativo/Não Cumulativo);
                                    02 - Operação Tributável - Base de Calculo = Valor da Operação (Alíquota
                                    Diferenciada);
                                  </xs:documentation>
                                </xs:annotation>
                                <xs:complexType>
                                  <xs:sequence>
                                    <xs:element name="CST">
                                      <xs:annotation>
                                        <xs:documentation>Código de Situação Tributária do PIS.
                                          01 – Operação Tributável - Base de Cálculo = Valor da Operação Alíquota Normal
                                          (Cumulativo/Não Cumulativo);
                                          02 - Operação Tributável - Base de Calculo = Valor da Operação (Alíquota
                                          Diferenciada);
                                        </xs:documentation>
                                      </xs:annotation>
                                      <xs:simpleType>
                                        <xs:restriction base="xs:string">
                                          <xs:whiteSpace value="preserve"/>
                                          <xs:enumeration value="01"/>
                                          <xs:enumeration value="02"/>
                                        </xs:restriction>
                                      </xs:simpleType>
                                    </xs:element>
                                    <xs:element name="vBC" type="TDec_1302">
                                      <xs:annotation>
                                        <xs:documentation>Valor da BC do PIS</xs:documentation>
                                      </xs:annotation>
                                    </xs:element>
                                    <xs:element name="pPIS" type="TDec_0302">
                                      <xs:annotation>
                                        <xs:documentation>Alíquota do PIS (em percentual)</xs:documentation>
                                      </xs:annotation>
                                    </xs:element>
                                    <xs:element name="vPIS" type="TDec_1302">
                                      <xs:annotation>
                                        <xs:documentation>Valor do PIS</xs:documentation>
                                      </xs:annotation>
                                    </xs:element>
                                  </xs:sequence>
                                </xs:complexType>
                              </xs:element>
                              <xs:element name="PISQtde">
                                <xs:annotation>
                                  <xs:documentation>Código de Situação Tributária do PIS.
                                    03 - Operação Tributável - Base de Calculo = Quantidade Vendida x Alíquota por
                                    Unidade de Produto;
                                  </xs:documentation>
                                </xs:annotation>
                                <xs:complexType>
                                  <xs:sequence>
                                    <xs:element name="CST">
                                      <xs:annotation>
                                        <xs:documentation>Código de Situação Tributária do PIS.
                                          03 - Operação Tributável - Base de Calculo = Quantidade Vendida x Alíquota por
                                          Unidade de Produto;
                                        </xs:documentation>
                                      </xs:annotation>
                                      <xs:simpleType>
                                        <xs:restriction base="xs:string">
                                          <xs:whiteSpace value="preserve"/>
                                          <xs:enumeration value="03"/>
                                        </xs:restriction>
                                      </xs:simpleType>
                                    </xs:element>
                                    <xs:element name="qBCProd" type="TDec_1204">
                                      <xs:annotation>
                                        <xs:documentation>Quantidade Vendida</xs:documentation>
                                      </xs:annotation>
                                    </xs:element>
                                    <xs:element name="vAliqProd" type="TDec_1104">
                                      <xs:annotation>
                                        <xs:documentation>Alíquota do PIS (em reais)</xs:documentation>
                                      </xs:annotation>
                                    </xs:element>
                                    <xs:element name="vPIS" type="TDec_1302">
                                      <xs:annotation>
                                        <xs:documentation>Valor do PIS</xs:documentation>
                                      </xs:annotation>
                                    </xs:element>
                                  </xs:sequence>
                                </xs:complexType>
                              </xs:element>
                              <xs:element name="PISNT">
                                <xs:annotation>
                                  <xs:documentation>Código de Situação Tributária do PIS.
                                    04 - Operação Tributável - Tributação Monofásica - (Alíquota Zero);
                                    06 - Operação Tributável - Alíquota Zero;
                                    07 - Operação Isenta da contribuição;
                                    08 - Operação Sem Incidência da contribuição;
                                    09 - Operação com suspensão da contribuição;
                                  </xs:documentation>
                                </xs:annotation>
                                <xs:complexType>
                                  <xs:sequence>
                                    <xs:element name="CST">
                                      <xs:annotation>
                                        <xs:documentation>Código de Situação Tributária do PIS.
                                          04 - Operação Tributável - Tributação Monofásica - (Alíquota Zero);
                                          06 - Operação Tributável - Alíquota Zero;
                                          07 - Operação Isenta da contribuição;
                                          08 - Operação Sem Incidência da contribuição;
                                          09 - Operação com suspensão da contribuição;
                                        </xs:documentation>
                                      </xs:annotation>
                                      <xs:simpleType>
                                        <xs:restriction base="xs:string">
                                          <xs:whiteSpace value="preserve"/>
                                          <xs:enumeration value="04"/>
                                          <xs:enumeration value="06"/>
                                          <xs:enumeration value="07"/>
                                          <xs:enumeration value="08"/>
                                          <xs:enumeration value="09"/>
                                        </xs:restriction>
                                      </xs:simpleType>
                                    </xs:element>
                                  </xs:sequence>
                                </xs:complexType>
                              </xs:element>
                              <xs:element name="PISOutr">
                                <xs:annotation>
                                  <xs:documentation>Código de Situação Tributária do PIS.
                                    99 - Outras Operações.
                                  </xs:documentation>
                                </xs:annotation>
                                <xs:complexType>
                                  <xs:sequence>
                                    <xs:element name="CST">
                                      <xs:annotation>
                                        <xs:documentation>Código de Situação Tributária do PIS.
                                          99 - Outras Operações.
                                        </xs:documentation>
                                      </xs:annotation>
                                      <xs:simpleType>
                                        <xs:restriction base="xs:string">
                                          <xs:whiteSpace value="preserve"/>
                                          <xs:enumeration value="49"/>
                                          <xs:enumeration value="50"/>
                                          <xs:enumeration value="51"/>
                                          <xs:enumeration value="52"/>
                                          <xs:enumeration value="53"/>
                                          <xs:enumeration value="54"/>
                                          <xs:enumeration value="55"/>
                                          <xs:enumeration value="56"/>
                                          <xs:enumeration value="60"/>
                                          <xs:enumeration value="61"/>
                                          <xs:enumeration value="62"/>
                                          <xs:enumeration value="63"/>
                                          <xs:enumeration value="64"/>
                                          <xs:enumeration value="65"/>
                                          <xs:enumeration value="66"/>
                                          <xs:enumeration value="67"/>
                                          <xs:enumeration value="70"/>
                                          <xs:enumeration value="71"/>
                                          <xs:enumeration value="72"/>
                                          <xs:enumeration value="73"/>
                                          <xs:enumeration value="74"/>
                                          <xs:enumeration value="75"/>
                                          <xs:enumeration value="98"/>
                                          <xs:enumeration value="99"/>
                                        </xs:restriction>
                                      </xs:simpleType>
                                    </xs:element>
                                    <xs:choice>
                                      <xs:sequence>
                                        <xs:element name="vBC" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor da BC do PIS</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pPIS" type="TDec_0302">
                                          <xs:annotation>
                                            <xs:documentation>Alíquota do PIS (em percentual)</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                      </xs:sequence>
                                      <xs:sequence>
                                        <xs:element name="qBCProd" type="TDec_1204">
                                          <xs:annotation>
                                            <xs:documentation>Quantidade Vendida</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vAliqProd" type="TDec_1104">
                                          <xs:annotation>
                                            <xs:documentation>Alíquota do PIS (em reais)</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                      </xs:sequence>
                                    </xs:choice>
                                    <xs:element name="vPIS" type="TDec_1302">
                                      <xs:annotation>
                                        <xs:documentation>Valor do PIS</xs:documentation>
                                      </xs:annotation>
                                    </xs:element>
                                  </xs:sequence>
                                </xs:complexType>
                              </xs:element>
                            </xs:choice>
                          </xs:complexType>
                        </xs:element>
                        <xs:element name="PISST" minOccurs="0">
                          <xs:annotation>
                            <xs:documentation>Dados do PIS Substituição Tributária</xs:documentation>
                          </xs:annotation>
                          <xs:complexType>
                            <xs:sequence>
                              <xs:choice>
                                <xs:sequence>
                                  <xs:element name="vBC" type="TDec_1302Opc">
                                    <xs:annotation>
                                      <xs:documentation>Valor da BC do PIS ST</xs:documentation>
                                    </xs:annotation>
                                  </xs:element>
                                  <xs:element name="pPIS" type="TDec_0302Opc">
                                    <xs:annotation>
                                      <xs:documentation>Alíquota do PIS ST (em percentual)</xs:documentation>
                                    </xs:annotation>
                                  </xs:element>
                                </xs:sequence>
                                <xs:sequence>
                                  <xs:element name="qBCProd" type="TDec_1204Opc">
                                    <xs:annotation>
                                      <xs:documentation>Quantidade Vendida</xs:documentation>
                                    </xs:annotation>
                                  </xs:element>
                                  <xs:element name="vAliqProd" type="TDec_1104Opc">
                                    <xs:annotation>
                                      <xs:documentation>Alíquota do PIS ST (em reais)</xs:documentation>
                                    </xs:annotation>
                                  </xs:element>
                                </xs:sequence>
                              </xs:choice>
                              <xs:element name="vPIS" type="TDec_1302Opc">
                                <xs:annotation>
                                  <xs:documentation>Valor do PIS ST</xs:documentation>
                                </xs:annotation>
                              </xs:element>
                            </xs:sequence>
                          </xs:complexType>
                        </xs:element>
                        <xs:element name="COFINS">
                          <xs:annotation>
                            <xs:documentation>Dados do COFINS</xs:documentation>
                          </xs:annotation>
                          <xs:complexType>
                            <xs:choice>
                              <xs:element name="COFINSAliq">
                                <xs:annotation>
                                  <xs:documentation>Código de Situação Tributária do COFINS.
                                    01 – Operação Tributável - Base de Cálculo = Valor da Operação Alíquota Normal
                                    (Cumulativo/Não Cumulativo);
                                    02 - Operação Tributável - Base de Calculo = Valor da Operação (Alíquota
                                    Diferenciada);
                                  </xs:documentation>
                                </xs:annotation>
                                <xs:complexType>
                                  <xs:sequence>
                                    <xs:element name="CST">
                                      <xs:annotation>
                                        <xs:documentation>Código de Situação Tributária do COFINS.
                                          01 – Operação Tributável - Base de Cálculo = Valor da Operação Alíquota Normal
                                          (Cumulativo/Não Cumulativo);
                                          02 - Operação Tributável - Base de Calculo = Valor da Operação (Alíquota
                                          Diferenciada);
                                        </xs:documentation>
                                      </xs:annotation>
                                      <xs:simpleType>
                                        <xs:restriction base="xs:string">
                                          <xs:whiteSpace value="preserve"/>
                                          <xs:enumeration value="01"/>
                                          <xs:enumeration value="02"/>
                                        </xs:restriction>
                                      </xs:simpleType>
                                    </xs:element>
                                    <xs:element name="vBC" type="TDec_1302">
                                      <xs:annotation>
                                        <xs:documentation>Valor da BC do COFINS</xs:documentation>
                                      </xs:annotation>
                                    </xs:element>
                                    <xs:element name="pCOFINS" type="TDec_0302">
                                      <xs:annotation>
                                        <xs:documentation>Alíquota do COFINS (em percentual)</xs:documentation>
                                      </xs:annotation>
                                    </xs:element>
                                    <xs:element name="vCOFINS" type="TDec_1302">
                                      <xs:annotation>
                                        <xs:documentation>Valor do COFINS</xs:documentation>
                                      </xs:annotation>
                                    </xs:element>
                                  </xs:sequence>
                                </xs:complexType>
                              </xs:element>
                              <xs:element name="COFINSQtde">
                                <xs:annotation>
                                  <xs:documentation>Código de Situação Tributária do COFINS.
                                    03 - Operação Tributável - Base de Calculo = Quantidade Vendida x Alíquota por
                                    Unidade de Produto;
                                  </xs:documentation>
                                </xs:annotation>
                                <xs:complexType>
                                  <xs:sequence>
                                    <xs:element name="CST">
                                      <xs:annotation>
                                        <xs:documentation>Código de Situação Tributária do COFINS.
                                          03 - Operação Tributável - Base de Calculo = Quantidade Vendida x Alíquota por
                                          Unidade de Produto;
                                        </xs:documentation>
                                      </xs:annotation>
                                      <xs:simpleType>
                                        <xs:restriction base="xs:string">
                                          <xs:enumeration value="03"/>
                                        </xs:restriction>
                                      </xs:simpleType>
                                    </xs:element>
                                    <xs:element name="qBCProd" type="TDec_1204">
                                      <xs:annotation>
                                        <xs:documentation>Quantidade Vendida</xs:documentation>
                                      </xs:annotation>
                                    </xs:element>
                                    <xs:element name="vAliqProd" type="TDec_1104">
                                      <xs:annotation>
                                        <xs:documentation>Alíquota do COFINS (em reais)</xs:documentation>
                                      </xs:annotation>
                                    </xs:element>
                                    <xs:element name="vCOFINS" type="TDec_1302">
                                      <xs:annotation>
                                        <xs:documentation>Valor do COFINS</xs:documentation>
                                      </xs:annotation>
                                    </xs:element>
                                  </xs:sequence>
                                </xs:complexType>
                              </xs:element>
                              <xs:element name="COFINSNT">
                                <xs:annotation>
                                  <xs:documentation>Código de Situação Tributária do COFINS:
                                    04 - Operação Tributável - Tributação Monofásica - (Alíquota Zero);
                                    06 - Operação Tributável - Alíquota Zero;
                                    07 - Operação Isenta da contribuição;
                                    08 - Operação Sem Incidência da contribuição;
                                    09 - Operação com suspensão da contribuição;
                                  </xs:documentation>
                                </xs:annotation>
                                <xs:complexType>
                                  <xs:sequence>
                                    <xs:element name="CST">
                                      <xs:annotation>
                                        <xs:documentation>Código de Situação Tributária do COFINS:
                                          04 - Operação Tributável - Tributação Monofásica - (Alíquota Zero);
                                          06 - Operação Tributável - Alíquota Zero;
                                          07 - Operação Isenta da contribuição;
                                          08 - Operação Sem Incidência da contribuição;
                                          09 - Operação com suspensão da contribuição;
                                        </xs:documentation>
                                      </xs:annotation>
                                      <xs:simpleType>
                                        <xs:restriction base="xs:string">
                                          <xs:whiteSpace value="preserve"/>
                                          <xs:enumeration value="04"/>
                                          <xs:enumeration value="06"/>
                                          <xs:enumeration value="07"/>
                                          <xs:enumeration value="08"/>
                                          <xs:enumeration value="09"/>
                                        </xs:restriction>
                                      </xs:simpleType>
                                    </xs:element>
                                  </xs:sequence>
                                </xs:complexType>
                              </xs:element>
                              <xs:element name="COFINSOutr">
                                <xs:annotation>
                                  <xs:documentation>Código de Situação Tributária do COFINS:
                                    49 - Outras Operações de Saída
                                    50 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada
                                    no Mercado Interno
                                    51 - Operação com Direito a Crédito – Vinculada Exclusivamente a Receita Não
                                    Tributada no Mercado Interno
                                    52 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de
                                    Exportação
                                    53 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e
                                    Não-Tributadas no Mercado Interno
                                    54 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado
                                    Interno e de Exportação
                                    55 - Operação com Direito a Crédito - Vinculada a Receitas Não-Tributadas no Mercado
                                    Interno e de Exportação
                                    56 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e
                                    Não-Tributadas no Mercado Interno, e de Exportação
                                    60 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita
                                    Tributada no Mercado Interno
                                    61 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita
                                    Não-Tributada no Mercado Interno
                                    62 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de
                                    Exportação
                                    63 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e
                                    Não-Tributadas no Mercado Interno
                                    64 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no
                                    Mercado Interno e de Exportação
                                    65 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas
                                    no Mercado Interno e de Exportação
                                    66 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e
                                    Não-Tributadas no Mercado Interno, e de Exportação
                                    67 - Crédito Presumido - Outras Operações
                                    70 - Operação de Aquisição sem Direito a Crédito
                                    71 - Operação de Aquisição com Isenção
                                    72 - Operação de Aquisição com Suspensão
                                    73 - Operação de Aquisição a Alíquota Zero
                                    74 - Operação de Aquisição sem Incidência da Contribuição
                                    75 - Operação de Aquisição por Substituição Tributária
                                    98 - Outras Operações de Entrada
                                    99 - Outras Operações.
                                  </xs:documentation>
                                </xs:annotation>
                                <xs:complexType>
                                  <xs:sequence>
                                    <xs:element name="CST">
                                      <xs:annotation>
                                        <xs:documentation>Código de Situação Tributária do COFINS:
                                          49 - Outras Operações de Saída
                                          50 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita
                                          Tributada no Mercado Interno
                                          51 - Operação com Direito a Crédito – Vinculada Exclusivamente a Receita Não
                                          Tributada no Mercado Interno
                                          52 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de
                                          Exportação
                                          53 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e
                                          Não-Tributadas no Mercado Interno
                                          54 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas no
                                          Mercado Interno e de Exportação
                                          55 - Operação com Direito a Crédito - Vinculada a Receitas Não-Tributadas no
                                          Mercado Interno e de Exportação
                                          56 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e
                                          Não-Tributadas no Mercado Interno, e de Exportação
                                          60 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a
                                          Receita Tributada no Mercado Interno
                                          61 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a
                                          Receita Não-Tributada no Mercado Interno
                                          62 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a
                                          Receita de Exportação
                                          63 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas
                                          e Não-Tributadas no Mercado Interno
                                          64 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas
                                          no Mercado Interno e de Exportação
                                          65 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas
                                          Não-Tributadas no Mercado Interno e de Exportação
                                          66 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas
                                          e Não-Tributadas no Mercado Interno, e de Exportação
                                          67 - Crédito Presumido - Outras Operações
                                          70 - Operação de Aquisição sem Direito a Crédito
                                          71 - Operação de Aquisição com Isenção
                                          72 - Operação de Aquisição com Suspensão
                                          73 - Operação de Aquisição a Alíquota Zero
                                          74 - Operação de Aquisição sem Incidência da Contribuição
                                          75 - Operação de Aquisição por Substituição Tributária
                                          98 - Outras Operações de Entrada
                                          99 - Outras Operações.
                                        </xs:documentation>
                                      </xs:annotation>
                                      <xs:simpleType>
                                        <xs:restriction base="xs:string">
                                          <xs:whiteSpace value="preserve"/>
                                          <xs:enumeration value="49"/>
                                          <xs:enumeration value="50"/>
                                          <xs:enumeration value="51"/>
                                          <xs:enumeration value="52"/>
                                          <xs:enumeration value="53"/>
                                          <xs:enumeration value="54"/>
                                          <xs:enumeration value="55"/>
                                          <xs:enumeration value="56"/>
                                          <xs:enumeration value="60"/>
                                          <xs:enumeration value="61"/>
                                          <xs:enumeration value="62"/>
                                          <xs:enumeration value="63"/>
                                          <xs:enumeration value="64"/>
                                          <xs:enumeration value="65"/>
                                          <xs:enumeration value="66"/>
                                          <xs:enumeration value="67"/>
                                          <xs:enumeration value="70"/>
                                          <xs:enumeration value="71"/>
                                          <xs:enumeration value="72"/>
                                          <xs:enumeration value="73"/>
                                          <xs:enumeration value="74"/>
                                          <xs:enumeration value="75"/>
                                          <xs:enumeration value="98"/>
                                          <xs:enumeration value="99"/>
                                        </xs:restriction>
                                      </xs:simpleType>
                                    </xs:element>
                                    <xs:choice>
                                      <xs:sequence>
                                        <xs:element name="vBC" type="TDec_1302">
                                          <xs:annotation>
                                            <xs:documentation>Valor da BC do COFINS</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="pCOFINS" type="TDec_0302">
                                          <xs:annotation>
                                            <xs:documentation>Alíquota do COFINS (em percentual)</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                      </xs:sequence>
                                      <xs:sequence>
                                        <xs:element name="qBCProd" type="TDec_1204">
                                          <xs:annotation>
                                            <xs:documentation>Quantidade Vendida</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                        <xs:element name="vAliqProd" type="TDec_1104">
                                          <xs:annotation>
                                            <xs:documentation>Alíquota do COFINS (em reais)</xs:documentation>
                                          </xs:annotation>
                                        </xs:element>
                                      </xs:sequence>
                                    </xs:choice>
                                    <xs:element name="vCOFINS" type="TDec_1302">
                                      <xs:annotation>
                                        <xs:documentation>Valor do COFINS</xs:documentation>
                                      </xs:annotation>
                                    </xs:element>
                                  </xs:sequence>
                                </xs:complexType>
                              </xs:element>
                            </xs:choice>
                          </xs:complexType>
                        </xs:element>
                        <xs:element name="COFINSST" minOccurs="0">
                          <xs:annotation>
                            <xs:documentation>Dados do COFINS da
                              Substituição Tributaria;
                            </xs:documentation>
                          </xs:annotation>
                          <xs:complexType>
                            <xs:sequence>
                              <xs:choice>
                                <xs:sequence>
                                  <xs:element name="vBC" type="TDec_1302Opc">
                                    <xs:annotation>
                                      <xs:documentation>Valor da BC do COFINS ST</xs:documentation>
                                    </xs:annotation>
                                  </xs:element>
                                  <xs:element name="pCOFINS" type="TDec_0302Opc">
                                    <xs:annotation>
                                      <xs:documentation>Alíquota do COFINS ST(em percentual)</xs:documentation>
                                    </xs:annotation>
                                  </xs:element>
                                </xs:sequence>
                                <xs:sequence>
                                  <xs:element name="qBCProd" type="TDec_1204Opc">
                                    <xs:annotation>
                                      <xs:documentation>Quantidade Vendida</xs:documentation>
                                    </xs:annotation>
                                  </xs:element>
                                  <xs:element name="vAliqProd" type="TDec_1104Opc">
                                    <xs:annotation>
                                      <xs:documentation>Alíquota do COFINS ST(em reais)</xs:documentation>
                                    </xs:annotation>
                                  </xs:element>
                                </xs:sequence>
                              </xs:choice>
                              <xs:element name="vCOFINS" type="TDec_1302Opc">
                                <xs:annotation>
                                  <xs:documentation>Valor do COFINS ST</xs:documentation>
                                </xs:annotation>
                              </xs:element>
                            </xs:sequence>
                          </xs:complexType>
                        </xs:element>
                      </xs:sequence>
                    </xs:complexType>
                  </xs:element>
                  <xs:element name="infAdProd" minOccurs="0">
                    <xs:annotation>
                      <xs:documentation>Informações adicionais do produto (norma referenciada, informações
                        complementares, etc)
                      </xs:documentation>
                    </xs:annotation>
                    <xs:simpleType>
                      <xs:restriction base="TString">
                        <xs:minLength value="1"/>
                        <xs:maxLength value="500"/>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:element>
                </xs:sequence>
                <xs:attribute name="nItem" use="required">
                  <xs:annotation>
                    <xs:documentation>Número do item do NF</xs:documentation>
                  </xs:annotation>
                  <xs:simpleType>
                    <xs:restriction base="xs:string">
                      <xs:whiteSpace value="preserve"/>
                      <xs:pattern
                              value="[1-9]{1}[0-9]{0,1}|[1-8]{1}[0-9]{2}|[9]{1}[0-8]{1}[0-9]{1}|[9]{1}[9]{1}[0]{1}"/>
                    </xs:restriction>
                  </xs:simpleType>
                </xs:attribute>
              </xs:complexType>
            </xs:element>
  XML
end