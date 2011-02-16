#coding: utf-8
module NfeEntity
  
  def self.included(base)
    base.extend ClassMethods
    base.class_eval {  @xml_params ||= [] }
  end

  module ClassMethods

    def nfe_attr *names
      names.each do |name|
        attr_accessor name
        @xml_params << name
      end

    end

  end

  def validate
    return true
  end

  def attributes
    @xml_params
  end

  def to_nfe_format
    if validate
      xml = ""
      attributes.each_pair do |key, value|
        xml += convert_to_xml(key, value)
      end
      return xml
    end
  end

  private
  def convert_to_xml(key, value)
    if value.nil?
      return ""
    end
    unless value.is_a? Hash
      "<#{key}>#{value}<#{key}/>" unless value.nil?
    else
      <<-XML
        <#{key}>
            hash_converter(value)
        </#{key}>
      XML
    end
  end

  def hash_converter(hash)
    hash.each_pair do |key, value|
      convert_to_xml(key, value)
    end
  end
end
