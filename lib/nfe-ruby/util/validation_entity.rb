#coding: utf-8

class ValidationEntity

  @@attrs_to_valide = []
  @@errors = {}

  def self.validates_length(*attrs)
    atributes = []

    attrs.each do |t|
      atributes << t
    end

    @@attrs_to_valide << [self.class.to_s, :length, attrs[:range], atributes]
  end

  def self.validates_required(*attrs)
    atributes = []

    attrs.each do |t|
      atributes << t
    end

    @@attrs_to_valide << [self.class.to_s, :required, atributes]
  end

  def self.validates_format(*attrs)
    atributes = []

    attrs.each do |t|
      atributes << t
    end

    @@attrs_to_valide << [self.class.to_s, :format, attrs[:regex], atributes]
  end

  def self.validates_type(*attrs)
    atributes = []

    attrs.each do |t|
      atributes << t
    end

    @@attrs_to_valide << [self.class.to_s, :type, attrs[:type], atributes]
  end

  private

  def in_format(value, regex)
    return false unless regex.is_a? Regexp
    regex.match(value.to_s)
  end

  def in_length(value, range)
    return false unless range.is_a? Range
    range.to_a.include? value.to_s.length
  end

  def not_null?(value)
    !value.to_s.eql? ''
  end

  def validate
    attrs = @@attrs_to_valide.select { |r| r[0] == self.class.to_s }

    attrs.each do |rule|
      validate_rule(rule) #rule contem um array de atributos e um parametro dependendo do tipo de validacao
    end

    @@errors.empty? # se true está com a validacao ok
  end

  def validate_rule(rule)

    case rule[1]
      when :length then
        validate_length(rule[3], rule[2])
      when :required then
        validate_required(rule[2])
      when :format then
        validate_format(rule[3], rule[2])
      when :type then
        validate_type(rule[3], rule[2])
    end

  end

  def validate_length(attrs, range)
    attrs.each do |attr|
      add_error(attr, :length) unless in_length(get_attribute_value(attr), range)
    end
    true
  end

  def validate_required(attrs)
    attrs.each do |attr|
      add_error(attr, :required) unless not_null? get_attribute_value(attr)
    end
  end

  def validate_format(attrs, regex)
    attrs.each do |attr|
      add_error(attr, :format) unless in_format(get_attribute_value(attr), regex)
    end
    true
  end

  def validate_type(attrs, klass)
    attrs.each do |attr|
      add_error(attr, :type) unless get_attribute_value(attr).is_a? klass
    end
    true
  end

  def add_error(attr, type)

    case type
      when :length then
        @@errors.merge({attr => 'tamanho inválido'})
      when :required then
        @@errors.merge({attr => 'campo obrigatório'})
      when :format then
        @@errors.merge({attr => 'formato inválido'})
      when :type then
        @@errors.merge({attr => 'tipo inválido'})
    end

  end

  def get_attribute_value value

    begin
      self.send(value.to_s)
    rescue
      throw "Atributo #{value.to_s} não existe na classe #{self.to_s}"
    end

  end

  def error_messages
    @@errors
  end

end
