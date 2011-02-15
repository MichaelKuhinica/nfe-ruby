class Destinatario
  include NfeEntity

  #Cnj ou cpf
  attr_accessor :cnpj

  #Cpf ou cnpj
  attr_accessor :cpf

  attr_accessor :xnome

  attr_accessor :endereco

  attr_accessor :ie

  #Inscrição na SUFRAMA (Obrigatório nas operações com as áreas com benefícios de
  #incentivos fiscais sob controle da SUFRAMA) PL_005d - 11/08/09 - alterado para aceitar 8 ou 9
  #dígitos
  attr_accessor :isuf

  attr_accessor :email

  def attributes
    @attributes = {
        'emit' => {
            'CNPJ'      => cnpj,
            'CPF'       => cpf,
            'xNome'     => xnome,
            'enderDest' => endereco,
            'IE'        => ie,
            'ISUF'      => isuf,
            'email'     => email
        }
    }
  end

end