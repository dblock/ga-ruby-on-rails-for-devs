# frozen_string_literal: true

require 'rubygems'
require 'spork'

ENV['RAILS_ENV'] ||= 'test'

Spork.prefork do
  require 'rails/application'
  require File.expand_path('../config/environment', __dir__)

  require 'rspec/rails'

  RSpec.configure do |config|
    config.mock_with :rspec
    config.expect_with :rspec
    config.after(:all) do
      puts 'All tests have finished.'
    end
  end
end

Spork.each_run do
  ['support/config/*.rb', 'support/*.rb'].each do |path|
    Dir["#{File.dirname(__FILE__)}/#{path}"].sort.each do |file|
      require file
    end
  end
end
