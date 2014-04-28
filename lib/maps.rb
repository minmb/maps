require "hashie"
require "faraday_middleware"
require "json"

require "maps/version"

module Maps

  autoload :Core, "maps/core"
  autoload :Directions, "maps/directions"
  autoload :DistanceMatrix, "maps/distance_matrix"
  autoload :Elevation, "maps/elevation"
  autoload :Geocoding, "maps/geocoding"
  autoload :Places, "maps/places"
  autoload :TimeZone, "maps/time_zone"

end