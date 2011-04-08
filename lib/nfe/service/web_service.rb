require 'net/http'
require 'savon'

module NFe

  module Service

    class WebService

      attr_accessor :soap_params

      def initialize(user, pass, certificate_path, state='sp')
        raise 'estado em formato inválido' unless state.respond_to? :to_sym
        @soap_params = NFe::Config::Params::URLS::SOAP_URLS[state.to_sym]

        @url = "#{@soap_params[:base_url]}#{:status_servico}"
        @certificate_path = certificate_path
        @user = user
        @pass = pass
      end

      def status_servico
        uri = URI.parse(@url)
        pem = File.read(@certificate_path)

        http = Net::HTTP.new(uri.host, uri.port)

        http.use_ssl = true
        http.cert = OpenSSL::X509::Certificate.new(pem)

        http.key = OpenSSL::PKey::RSA.new(pem)

        http.verify_mode = OpenSSL::SSL::VERIFY_PEER

        request = Net::HTTP::Get.new(uri.request_uri)

        p request.body
      end

    end

  end

end