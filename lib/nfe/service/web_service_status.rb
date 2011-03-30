require 'net/http'

module NFe

  module Service

    class WebServiceStatus

      @@sp_url = 'https://homologacao.nfe.fazenda.sp.gov.br/nfeweb/services'
      @@status_servico = '/nfestatusservico.asmx'

      def initialize
        Net::HTTP.start(@@sp_url) { |http|
          http.use_ssl = true
          req = Net::HTTP::Get.new(@@status_servico)
          response = http.request(req)
          p response.body
        }
      end

    end

  end

end

