# frozen_string_literal: true

puts 'Loading config.ru'

require ::File.expand_path('config/environment', __dir__)

puts 'Running HelloWorld::Application'

run HelloWorld::Application
