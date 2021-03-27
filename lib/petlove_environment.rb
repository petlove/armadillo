# frozen_string_literal: true

module PetloveEnvironment
  def self.methods!(configuration)
    configuration.environments.each { |env| define_singleton_method("#{env.name}?") { env.condition } }
  end
end
