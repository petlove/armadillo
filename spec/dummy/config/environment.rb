# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

Armadillo.configure do |config|
  config.rails_config = Rails.application.config
  config.position = :right
  config.envs = [
    { name: :production, condition: Rails.env.production? && ENV['APP_ENV'] == 'production', show: false },
    { name: :staging, condition: Rails.env.production? && ENV['APP_ENV'] == 'staging', show: true },
    { name: :development, condition: Rails.env.production? && ENV['APP_ENV'] == 'development', show: true },
    { name: :local, condition: Rails.env.development? && ENV['APP_ENV'] == 'local', show: true },
    { name: :test, condition: ENV['APP_ENV'].match?(/test|codefresh|cf/), show: false }
  ]
end

# Initialize the Rails application.
Rails.application.initialize!
