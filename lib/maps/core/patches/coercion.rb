module Hashie
  module Extensions
    module Coercion

      module Helpers
        class << self
          def coerce(value, into)
            if into.respond_to?(:call)
              into.call(value)
            elsif into.respond_to?(:coerce)
              into.coerce(value)
            else
              into.new(value)
            end
          end
        end
      end

      module InstanceMethods
        def []=(key, value)
          into = self.class.key_coercion(key) || self.class.value_coercion(value)

          if value && into
            if value.is_a?(::Array)
              value = value.map { |v| Helpers.coerce(v, into) }
            else
              value = Helpers.coerce(value, into)
            end
          end

          super(key, value)
        end
      end
    end
  end
end