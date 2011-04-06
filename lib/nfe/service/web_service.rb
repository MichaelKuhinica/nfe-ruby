require 'net/http'
require 'savon'

module NFe

  module Service

    class WebService

      attr_accessor :soap_params, :client

      def initialize(user, pass, certificate, state='sp')
        raise 'parametro de inicializacao de webservice invalido' unless state.respond_to? :to_sym
        @certificate = certificate
        @user = user
        @pass = pass
        self.soap_params = NFe::Config::Params::URLS::SOAP_URLS[state.to_sym]
      end

      def status_servico
        client = Savon::Client.new do |wsdl, http, wsse|
          wsse.credentials @user, @pass, @certificate
          wsdl.document = "#{soap_params[:base_url]}#{soap_params[:status_servico]}?wsdl"
          http.auth.ssl.cert_file = @certificate
        end

        p client.wsdl.soap_actions
      end

    end

  end

end