require '../entidade_nfe'

#TODO
#elemento ide da NFe
class IdentificacaoNFe < EntidadeNFe
    xml <<-XML
            <xs:element name="ide">
              <xs:annotation>
                <xs:documentation>identificação da NF-e</xs:documentation>
              </xs:annotation>
              <xs:complexType>
                <xs:sequence>
                  <xs:element name="cUF" type="TCodUfIBGE">
                    <xs:annotation>
                      <xs:documentation>Código da UF do emitente do Documento Fiscal. Utilizar a Tabela do IBGE.
                      </xs:documentation>
                    </xs:annotation>
                  </xs:element>
                  <xs:element name="cNF">
                    <xs:annotation>
                      <xs:documentation>Código numérico que compõe a Chave de Acesso. Número aleatório gerado pelo
                        emitente para cada NF-e. (tamanho reduzido para 8 dígitos v2.0)
                      </xs:documentation>
                    </xs:annotation>
                    <xs:simpleType>
                      <xs:restriction base="xs:string">
                        <xs:whiteSpace value="preserve"/>
                        <xs:pattern value="[0-9]{8}"/>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:element>
                  <xs:element name="natOp">
                    <xs:annotation>
                      <xs:documentation>Descrição da Natureza da Operação</xs:documentation>
                    </xs:annotation>
                    <xs:simpleType>
                      <xs:restriction base="TString">
                        <xs:minLength value="1"/>
                        <xs:maxLength value="60"/>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:element>
                  <xs:element name="indPag">
                    <xs:annotation>
                      <xs:documentation>Indicador da forma de pagamento:
                        0 – pagamento à vista;
                        1 – pagamento à prazo;
                        2 – outros.
                      </xs:documentation>
                    </xs:annotation>
                    <xs:simpleType>
                      <xs:restriction base="xs:string">
                        <xs:whiteSpace value="preserve"/>
                        <xs:enumeration value="0"/>
                        <xs:enumeration value="1"/>
                        <xs:enumeration value="2"/>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:element>
                  <xs:element name="mod" type="TMod">
                    <xs:annotation>
                      <xs:documentation>Código do modelo do Documento Fiscal. Utilizar 55 para identificação da NF-e,
                        emitida em substituição ao modelo 1 e 1A.
                      </xs:documentation>
                    </xs:annotation>
                  </xs:element>
                  <xs:element name="serie" type="TSerie">
                    <xs:annotation>
                      <xs:documentation>Série do Documento Fiscal
                        série normal 0-889
                        Avulsa Fisco 890-899
                        SCAN 900-999
                      </xs:documentation>
                    </xs:annotation>
                  </xs:element>
                  <xs:element name="nNF" type="TNF">
                    <xs:annotation>
                      <xs:documentation>Número do Documento Fiscal</xs:documentation>
                    </xs:annotation>
                  </xs:element>
                  <xs:element name="dEmi" type="TData">
                    <xs:annotation>
                      <xs:documentation>Data de emissão do Documento Fiscal (AAAA-MM-DD)</xs:documentation>
                    </xs:annotation>
                  </xs:element>
                  <xs:element name="dSaiEnt" type="TData" minOccurs="0">
                    <xs:annotation>
                      <xs:documentation>Data de saída ou de entrada da mercadoria / produto (AAAA-MM-DD)
                      </xs:documentation>
                    </xs:annotation>
                  </xs:element>
                  <xs:element name="hSaiEnt" type="TTime" minOccurs="0">
                    <xs:annotation>
                      <xs:documentation>Hora de saída ou de entrada da mercadoria / produto (HH:MM:SS) (v2.0)
                      </xs:documentation>
                    </xs:annotation>
                  </xs:element>
                  <xs:element name="tpNF">
                    <xs:annotation>
                      <xs:documentation>Tipo do Documento Fiscal (0 - entrada; 1 - saída)</xs:documentation>
                    </xs:annotation>
                    <xs:simpleType>
                      <xs:restriction base="xs:string">
                        <xs:whiteSpace value="preserve"/>
                        <xs:enumeration value="0"/>
                        <xs:enumeration value="1"/>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:element>
                  <xs:element name="cMunFG" type="TCodMunIBGE">
                    <xs:annotation>
                      <xs:documentation>Código do Município de Ocorrência do Fato Gerador (utilizar a tabela do IBGE)
                      </xs:documentation>
                    </xs:annotation>
                  </xs:element>
                  <xs:element name="NFref" minOccurs="0" maxOccurs="unbounded">
                    <xs:annotation>
                      <xs:documentation>Grupo de infromações da NF referenciada</xs:documentation>
                    </xs:annotation>
                    <xs:complexType>
                      <xs:choice>
                        <xs:element name="refNFe" type="TChNFe">
                          <xs:annotation>
                            <xs:documentation>Chave de acesso das NF-e referenciadas. Chave de acesso compostas por
                              Código da UF (tabela do IBGE) + AAMM da emissão + CNPJ do Emitente + modelo, série e
                              número da NF-e Referenciada + Código Numérico + DV.
                            </xs:documentation>
                          </xs:annotation>
                        </xs:element>
                        <xs:element name="refNF">
                          <xs:annotation>
                            <xs:documentation>Dados da NF modelo 1/1A referenciada</xs:documentation>
                          </xs:annotation>
                          <xs:complexType>
                            <xs:sequence>
                              <xs:element name="cUF" type="TCodUfIBGE">
                                <xs:annotation>
                                  <xs:documentation>Código da UF do emitente do Documento Fiscal. Utilizar a Tabela do
                                    IBGE.
                                  </xs:documentation>
                                </xs:annotation>
                              </xs:element>
                              <xs:element name="AAMM">
                                <xs:annotation>
                                  <xs:documentation>AAMM da emissão</xs:documentation>
                                </xs:annotation>
                                <xs:simpleType>
                                  <xs:restriction base="xs:string">
                                    <xs:whiteSpace value="preserve"/>
                                    <xs:pattern value="[0-9]{2}[0]{1}[1-9]{1}|[0-9]{2}[1]{1}[0-2]{1}"/>
                                  </xs:restriction>
                                </xs:simpleType>
                              </xs:element>
                              <xs:element name="CNPJ" type="TCnpj">
                                <xs:annotation>
                                  <xs:documentation>CNPJ do emitente do documento fiscal referenciado</xs:documentation>
                                </xs:annotation>
                              </xs:element>
                              <xs:element name="mod">
                                <xs:annotation>
                                  <xs:documentation>Código do modelo do Documento Fiscal. Utilizar 01 para NF modelo
                                    1/1A
                                  </xs:documentation>
                                </xs:annotation>
                                <xs:simpleType>
                                  <xs:restriction base="xs:string">
                                    <xs:whiteSpace value="preserve"/>
                                    <xs:enumeration value="01"/>
                                  </xs:restriction>
                                </xs:simpleType>
                              </xs:element>
                              <xs:element name="serie" type="TSerie">
                                <xs:annotation>
                                  <xs:documentation>Série do Documento Fiscal, informar zero se inexistente
                                  </xs:documentation>
                                </xs:annotation>
                              </xs:element>
                              <xs:element name="nNF" type="TNF">
                                <xs:annotation>
                                  <xs:documentation>Número do Documento Fiscal</xs:documentation>
                                </xs:annotation>
                              </xs:element>
                            </xs:sequence>
                          </xs:complexType>
                        </xs:element>
                        <xs:element name="refNFP">
                          <xs:annotation>
                            <xs:documentation>Grupo com as informações NF de produtor referenciada (v2.0)
                            </xs:documentation>
                          </xs:annotation>
                          <xs:complexType>
                            <xs:sequence>
                              <xs:element name="cUF" type="TCodUfIBGE">
                                <xs:annotation>
                                  <xs:documentation>Código da UF do emitente do Documento FiscalUtilizar a Tabela do
                                    IBGE (Anexo IV - Tabela de UF, Município e País) (v2.0)
                                  </xs:documentation>
                                </xs:annotation>
                              </xs:element>
                              <xs:element name="AAMM">
                                <xs:annotation>
                                  <xs:documentation>AAMM da emissão da NF de produtor (v2.0)</xs:documentation>
                                </xs:annotation>
                                <xs:simpleType>
                                  <xs:restriction base="xs:string">
                                    <xs:whiteSpace value="preserve"/>
                                    <xs:pattern value="[0-9]{2}[0]{1}[1-9]{1}|[0-9]{2}[1]{1}[0-2]{1}"/>
                                  </xs:restriction>
                                </xs:simpleType>
                              </xs:element>
                              <xs:choice>
                                <xs:element name="CNPJ" type="TCnpj">
                                  <xs:annotation>
                                    <xs:documentation>CNPJ do emitente da NF de produtor (v2.0)</xs:documentation>
                                  </xs:annotation>
                                </xs:element>
                                <xs:element name="CPF" type="TCpf">
                                  <xs:annotation>
                                    <xs:documentation>CPF do emitente da NF de produtor (v2.0)</xs:documentation>
                                  </xs:annotation>
                                </xs:element>
                              </xs:choice>
                              <xs:element name="IE" type="TIeDest">
                                <xs:annotation>
                                  <xs:documentation>IE do emitente da NF de Produtor (v2.0))</xs:documentation>
                                </xs:annotation>
                              </xs:element>
                              <xs:element name="mod">
                                <xs:annotation>
                                  <xs:documentation>Código do modelo do Documento Fiscal - utilizar 04 para NF de
                                    produtor ou 01 para NF Avulsa(v2.0)
                                  </xs:documentation>
                                </xs:annotation>
                                <xs:simpleType>
                                  <xs:restriction base="xs:string">
                                    <xs:whiteSpace value="preserve"/>
                                    <xs:enumeration value="01"/>
                                    <xs:enumeration value="04"/>
                                  </xs:restriction>
                                </xs:simpleType>
                              </xs:element>
                              <xs:element name="serie" type="TSerie">
                                <xs:annotation>
                                  <xs:documentation>Série do Documento Fiscal, informar zero se inexistentesérie (v2.0).
                                  </xs:documentation>
                                </xs:annotation>
                              </xs:element>
                              <xs:element name="nNF" type="TNF">
                                <xs:annotation>
                                  <xs:documentation>Número do Documento Fiscal - 1 – 999999999 - (v2.0)
                                  </xs:documentation>
                                </xs:annotation>
                              </xs:element>
                            </xs:sequence>
                          </xs:complexType>
                        </xs:element>
                        <xs:element name="refCTe" type="TChNFe">
                          <xs:annotation>
                            <xs:documentation>Utilizar esta TAG para referenciar um CT-e emitido anteriormente,
                              vinculada a NF-e atual - (v2.0).
                            </xs:documentation>
                          </xs:annotation>
                        </xs:element>
                        <xs:element name="refECF">
                          <xs:annotation>
                            <xs:documentation>Grupo do Cupom Fiscal vinculado à NF-e (v2.0).</xs:documentation>
                          </xs:annotation>
                          <xs:complexType>
                            <xs:sequence>
                              <xs:element name="mod">
                                <xs:annotation>
                                  <xs:documentation>Código do modelo do Documento Fiscal
                                    Preencher com "2B", quando se tratar de Cupom Fiscal emitido por máquina
                                    registradora (não ECF), com "2C", quando se tratar de Cupom Fiscal PDV, ou "2D",
                                    quando se tratar de Cupom Fiscal (emitido por ECF) (v2.0).
                                  </xs:documentation>
                                </xs:annotation>
                                <xs:simpleType>
                                  <xs:restriction base="xs:string">
                                    <xs:whiteSpace value="preserve"/>
                                    <xs:enumeration value="2B"/>
                                    <xs:enumeration value="2C"/>
                                    <xs:enumeration value="2D"/>
                                  </xs:restriction>
                                </xs:simpleType>
                              </xs:element>
                              <xs:element name="nECF">
                                <xs:annotation>
                                  <xs:documentation>Informar o número de ordem seqüencial do ECF que emitiu o Cupom
                                    Fiscal vinculado à NF-e (v2.0).
                                  </xs:documentation>
                                </xs:annotation>
                                <xs:simpleType>
                                  <xs:restriction base="xs:string">
                                    <xs:whiteSpace value="preserve"/>
                                    <xs:pattern value="[0-9]{1,3}"/>
                                  </xs:restriction>
                                </xs:simpleType>
                              </xs:element>
                              <xs:element name="nCOO">
                                <xs:annotation>
                                  <xs:documentation>Informar o Número do Contador de Ordem de Operação - COO vinculado à
                                    NF-e (v2.0).
                                  </xs:documentation>
                                </xs:annotation>
                                <xs:simpleType>
                                  <xs:restriction base="xs:string">
                                    <xs:whiteSpace value="preserve"/>
                                    <xs:pattern value="[0-9]{1,6}"/>
                                  </xs:restriction>
                                </xs:simpleType>
                              </xs:element>
                            </xs:sequence>
                          </xs:complexType>
                        </xs:element>
                      </xs:choice>
                    </xs:complexType>
                  </xs:element>
                  <xs:element name="tpImp">
                    <xs:annotation>
                      <xs:documentation>Formato de impressão do DANFE (1 - Retrato; 2 - Paisagem)</xs:documentation>
                    </xs:annotation>
                    <xs:simpleType>
                      <xs:restriction base="xs:string">
                        <xs:whiteSpace value="preserve"/>
                        <xs:enumeration value="1"/>
                        <xs:enumeration value="2"/>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:element>
                  <xs:element name="tpEmis">
                    <xs:annotation>
                      <xs:documentation>Forma de emissão da NF-e
                        1 - Normal;
                        2 - Contingência FS
                        3 - Contingência SCAN
                        4 - Contingência DPEC
                        5 - Contingência FSDA
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
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:element>
                  <xs:element name="cDV">
                    <xs:annotation>
                      <xs:documentation>Digito Verificador da Chave de Acesso da NF-e</xs:documentation>
                    </xs:annotation>
                    <xs:simpleType>
                      <xs:restriction base="xs:string">
                        <xs:whiteSpace value="preserve"/>
                        <xs:pattern value="[0-9]{1}"/>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:element>
                  <xs:element name="tpAmb" type="TAmb">
                    <xs:annotation>
                      <xs:documentation>Identificação do Ambiente:
                        1 - Produção
                        2 - Homologação
                      </xs:documentation>
                    </xs:annotation>
                  </xs:element>
                  <xs:element name="finNFe" type="TFinNFe">
                    <xs:annotation>
                      <xs:documentation>Finalidade da emissão da NF-e:
                        1 - NFe normal
                        2 - NFe complementar
                        3 - NFe de ajuste
                      </xs:documentation>
                    </xs:annotation>
                  </xs:element>
                  <xs:element name="procEmi" type="TProcEmi">
                    <xs:annotation>
                      <xs:documentation>Processo de emissão utilizado com a seguinte codificação:
                        0 - emissão de NF-e com aplicativo do contribuinte;
                        1 - emissão de NF-e avulsa pelo Fisco;
                        2 - emissão de NF-e avulsa, pelo contribuinte com seu certificado digital, através do site
                        do Fisco;
                        3- emissão de NF-e pelo contribuinte com aplicativo fornecido pelo Fisco.
                      </xs:documentation>
                    </xs:annotation>
                  </xs:element>
                  <xs:element name="verProc">
                    <xs:annotation>
                      <xs:documentation>versão do aplicativo utilizado no processo de
                        emissão
                      </xs:documentation>
                    </xs:annotation>
                    <xs:simpleType>
                      <xs:restriction base="TString">
                        <xs:minLength value="1"/>
                        <xs:maxLength value="20"/>
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:element>
                  <xs:sequence minOccurs="0">
                    <xs:annotation>
                      <xs:documentation>Informar apenas
                        para tpEmis diferente de 1
                      </xs:documentation>
                    </xs:annotation>
                    <xs:element name="dhCont">
                      <xs:annotation>
                        <xs:documentation>Informar a data e hora de entrada em contingência contingência no formato
                          AAAA-MM-DDTHH:MM:SS (v.2.0).
                        </xs:documentation>
                      </xs:annotation>
                      <xs:simpleType>
                        <xs:restriction base="xs:string">
                          <xs:whiteSpace value="preserve"/>
                          <xs:pattern
                                  value="(((20(([02468][048])|([13579][26]))-02-29))|(20[0-9][0-9])-((((0[1-9])|(1[0-2]))-((0[1-9])|(1\d)|(2[0-8])))|((((0[13578])|(1[02]))-31)|(((0[1,3-9])|(1[0-2]))-(29|30)))))T(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d"/>
                        </xs:restriction>
                      </xs:simpleType>
                    </xs:element>
                    <xs:element name="xJust">
                      <xs:annotation>
                        <xs:documentation>Informar a Justificativa da entrada em (v.2.0)</xs:documentation>
                      </xs:annotation>
                      <xs:simpleType>
                        <xs:restriction base="TString">
                          <xs:minLength value="15"/>
                          <xs:maxLength value="256"/>
                        </xs:restriction>
                      </xs:simpleType>
                    </xs:element>
                  </xs:sequence>
                </xs:sequence>
              </xs:complexType>
            </xs:element>
    XML
end