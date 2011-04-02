require 'net/http'
require 'savon'

module NFe

  module Service

    class WebService

      attr_accessor :soap_params

      def initialize(state='sp')
        raise 'parametro de inicializacao de webservice invalido' unless state.respond_to? :to_sym

        @@soap_params = NFe::Config::Params::URLS::SOAP_URLS[state.to_sym]

        @@client = Savon::Client.new do |wsdl, http|
          wsdl.document = "#{soap_params[:base_url]}#{soap_params[:status_servico]}?wsdl"
        end
        p @@client.wsdl.soap_actions
      end

    end

  end

end