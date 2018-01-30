module InstanceCounter
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    def instances
      @count
    end

    private

    def plus_counter
      @count ||= 0
      @count += 1
    end
  end

  module InstanceMethods
    private
    def register_instance
      self.class.send :plus_counter
    end
  end
end
