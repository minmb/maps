module Hashie
  class Mash

    protected
    def convert_value(val, duping = false) #:nodoc:
      case val
      when self.class
        val.dup
      when Hash
        duping ? val.dup : val
      when ::Hash
        val = val.dup if duping
        Mash.new(val)
      when Array
        val.map { |e| convert_value(e) }
      else
        val
      end
    end

  end
end