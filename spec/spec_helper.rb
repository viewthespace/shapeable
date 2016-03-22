require 'active_support/all'
require 'action_controller'
require 'action_dispatch'
require 'rails/railtie'
require 'active_model_serializers'
require_relative '../lib/shapeable'

Dir[Dir.pwd + '/spec/fixtures/*.rb'].each { |f| require f }
Dir[Dir.pwd + '/spec/fixtures/models/**/*.rb'].each { |f| require f }
Dir[Dir.pwd + '/spec/fixtures/serializers/**/*.rb'].each { |f| require f }
Dir[Dir.pwd + '/spec/fixtures/controllers/**/*.rb'].each { |f| require f }

require 'rspec/rails'

