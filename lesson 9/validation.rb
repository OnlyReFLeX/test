module Validation
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    def validates
      class_variable_get(:@@validates)
    end
    def validate(*args)
      unless class_variable_defined?(:@@validates)
        class_variable_set(:@@validates, [])
      end
      class_variable_get(:@@validates) << args
    end
  end

  module InstanceMethods
    def validate!
      self.class.validates.each do |args|
        val = instance_variable_get("@#{args[0]}")

        send "validate_#{args[1]}", val, *args[2]
      end
      true
    end

    def valid?
      validate!
    rescue RuntimeError
      false
    end

    private

    def validate_presence(val)
      raise 'Значение не заполнено' if val.nil? || val.empty?
    end

    def validate_type(val, type)
      raise 'Несоответствие типа' unless val.is_a? type
    end

    def validate_format(val, format)
      raise 'Неправильный формат' if val !~ format
    end
  end
end
