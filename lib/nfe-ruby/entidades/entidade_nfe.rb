#coding: utf-8
require 'nfe-ruby/util/validation_entity'

class EntidadeNFe < ValidationEntity

  @@xml_params = {}
  @@validations = []

  def self.nfe_attr *names
    names.each do |name|
      attr_accessor name
      update_xml_params(self.to_s, name)
      puts @@xml_params
    end
  end

  def self.update_xml_params(entity, attr)

    @@xml_params = @@xml_params.merge({entity => {}}) unless @@xml_params.include? entity

    @@xml_params[entity] = @@xml_params[entity].merge({:attributes => []}) if @@xml_params[entity].empty?

    @@xml_params[entity][:attributes] << attr

  end

  def attributes
    hash = {}
    class_attributes = @@xml_params.select { |entity| entity.to_s == self.class.to_s }

    class_attributes[self.class.to_s][:attributes].each do |attr|
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
    else
      puts errors_messages
    end
  end

  def to_s
    return self.to_nfe_format if self.respond_to? :to_nfe_format
    super
  end

  private
  def convert_to_xml(key, value)
    return "" if value.nil?

    if value.respond_to? :to_nfe_format
      return "#{value}" unless value.to_s.empty?
    end

    unless value.is_a? Hash
      "<#{key}>#{value}</#{key}>\n" unless value.to_s.empty?
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

end
