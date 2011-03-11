#coding: utf-8

class ValidationEntity

  @@attrs_to_valide = []
  @@errors = {}

  def validates_length(*attrs)
    atributes = []

    attrs.each do |t|
      atributes << t
    end

    @@attrs_to_valide << [:length, attrs[:range], atributes]
  end

  def validates_required(*attrs)
    atributes = []

    attrs.each do |t|
      atributes << t
    end

    @@attrs_to_valide << [:required, atributes]
  end

  def validates_format(*attrs)
    atributes = []

    attrs.each do |t|
      atributes << t
    end

    @@attrs_to_valide << [:format, attrs[:regex], atributes]
  end

  def validates_type(*attrs)
    atributes = []

    attrs.each do |t|
      atributes << t
    end

    @@attrs_to_valide << [:type, attrs[:type], atributes]
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
    @@attrs_to_valide.each do |rule|
      validate_rule(rule) #rule contem um array de atributos e um parametro dependendo do tipo de validacao
    end

    @@errors.empty? # se true está com a validacao ok
  end

  def validate_rule(rule)

    case rule[0]
      when :length then
        validate_length(rule[2], rule[1])
      when :required then
        validate_required(rule[2])
      when :format then
        validate_format(rule[2], rule[1])
      when :type then
        validate_type(rule[2], rule[1])
    end

  end

  def validate_length(attrs, range)
    attrs.each do |attr|
      add_error(attr, :length) unless in_length(self.send(attr.to_s), range)
    end
    true
  end

  def validate_required(attrs)
    attrs.each do |attr|
      add_error(attr, :required) unless not_null? self.send(attr.to_s)
    end
  end

  def validate_format(attrs, regex)
    attrs.each do |attr|
      add_error(attr, :format) unless in_format(self.send(attr.to_s), regex)
    end
    true
  end

  def validate_type(attrs, klass)
    attrs.each do |attr|
      add_error(attr, :type) unless self.send(attr.to_s).is_a? klass
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

end
