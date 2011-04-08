#coding: utf-8

require 'nokogiri'
require 'roxml'

#require 'nfe/util/validation_control'


module NFe

  class EntidadeNFe
    
    include ROXML

    #  @@xml_params = {}
    @@validations = []

    class << self
      alias :nfe_attr :xml_accessor

      def nfe_attrs
        roxml_attrs.map(&:attr_name)
      end
    end

    def nfe_attrs
      self.class.nfe_attrs
    end

    def to_nfe
      doc = Nokogiri::XML::Document.new
      doc.root = to_xml
      doc.serialize
    end

    def to_s
      respond_to? :to_nfe ? to_nfe : super
    end

  end

end