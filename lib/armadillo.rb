# frozen_string_literal: true

require 'armadillo/version'
require 'armadillo/configuration'
require 'armadillo/environment'
require 'rack-dev-mark'
require 'petlove_environment'
require 'rails'

module Armadillo
  class << self
    def configure
      yield configuration
      configuration.setup!
      configuration.mount!
      PetloveEnvironment.methods!(configuration)
    end

    def configuration
      @configuration ||= Configuration.new
    end
  end
end
