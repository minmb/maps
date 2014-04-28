require 'hashie'
require 'maps/core/patches/coercion'
require 'maps/core/patches/mash'

module Maps
  module Core

    class Resource < Hashie::Mash

      include Hashie::Extensions::Coercion
    
    end

  end
end