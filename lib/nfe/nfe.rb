module NFe
  
  class NotaFiscal

    def initialize(*items)
      @items = items
    end

    def to_xml
      doc = Nokogiri::XML::Document.new
      @items.each do |item|
        doc << item.nfe_attrs
      end
      doc.serialize
    end

  end

end
