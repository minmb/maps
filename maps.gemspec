# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'maps/version'

Gem::Specification.new do |spec|
  spec.name          = "maps"
  spec.version       = Maps::VERSION
  spec.authors       = ["protomouse"]
  spec.email         = ["root@protomou.se"]
  spec.summary       = %q{Ruby client for Google Maps Web Services}
  spec.homepage      = "https://github.com/minmb/maps"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "json", "~> 1.8.1"
  spec.add_dependency "faraday", "~> 0.9.0"
  spec.add_dependency "faraday_middleware", "~> 0.9.1"
  spec.add_dependency "hashie", "~> 2.1.1"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
