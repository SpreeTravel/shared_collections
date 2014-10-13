require 'simplecov'
require 'pry-byebug'

SimpleCov.start do
  add_filter '/spec/'
  add_filter '/model_schemas/'
end

Bundler.require(:default, :test)

require './lib/hub/samples'

Dir["./spec/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  config.mock_framework = :rspec
  #config.include SampleMaker
end
