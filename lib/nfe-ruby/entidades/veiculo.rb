class Veiculo
  nfe_attr :placa
  nfe_attr :uf
  nfe_attr :rntc

  def attributes
    @attributes = {
        :placa => placa,
        'UF' => uf,
        'RNTC' => rntc
    }
  end

end