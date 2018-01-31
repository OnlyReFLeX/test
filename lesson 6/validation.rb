module Validation
  def self.included(base)
    base.send :include, InstanceMethods
  end

  module InstanceMethods
    def valid?
      validate!
    rescue RuntimeError
      false
    end
  end
end
