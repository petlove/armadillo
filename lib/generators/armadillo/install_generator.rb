# frozen_string_literal: true

require 'rails/generators/base'

INITIALIZER_FILE = <<~INITIALIZER_FILE
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
INITIALIZER_FILE

module Armadillo
  class InstallGenerator < Rails::Generators::Base
    def install_armadillo
      insert_into_file 'config/environment.rb', after: "require_relative 'application'" do
        "\n\n#{INITIALIZER_FILE}"
      end
    end
  end
end
