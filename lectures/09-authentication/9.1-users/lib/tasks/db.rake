# frozen_string_literal: true

namespace :db do
  desc 'Display database configuration.'
  task config: [:environment] do
    database_config_file = YAML.load_file(Rails.root.join('config/database.yml')).symbolize_keys
    p database_config_file[Rails.env.to_sym]
  end
end
