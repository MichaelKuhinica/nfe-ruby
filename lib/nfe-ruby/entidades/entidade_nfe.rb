#coding: utf-8

class EntidadeNFe

  @@xml_params = []

  def self.nfe_attr *names
    names.each do |name|
      attr_accessor name
      @@xml_params << name.to_s
    end
  end

  def attributes
    hash = {}
    @@xml_params.each do |attr|
      hash = hash.merge(attr => send(attr))
    end
    hash
  end

  def to_nfe_format
    if validate
      xml = ""
      attributes.each do |key, value|
        xml += convert_to_xml(key, value)
      end
      xml
    end
  end

  private
  def convert_to_xml(key, value)
    if value.nil?
      return ""
    end
    unless value.is_a? Hash
      "<#{key}>#{value}<#{key}/>\n" unless value.to_s.empty?
    else
      <<-XML
      <#{key}>
        #{hash_converter(value)}
      </#{key}>
      XML
    end
  end

  def hash_converter(hash)
    xml = ''
    hash.each do |key, value|
      xml += convert_to_xml(key, value)
    end
    xml
  end


  def validate
    true
  end

end
