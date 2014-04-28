require "maps"

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

Dir[File.join(File.expand_path('../support', __FILE__), '**', '*.rb')].each { |f| require f }