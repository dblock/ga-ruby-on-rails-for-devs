puts 'Loading application.rb'

require File.expand_path('boot', __dir__)

require 'action_controller/railtie'

Bundler.require :default, Rails.env

module HelloWorld
  class Application < Rails::Application
    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = 'utf-8'
  end
end
