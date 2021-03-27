# frozen_string_literal: true

module Armadillo
  class Configuration
    attr_accessor :rails_config, :envs, :position, :environments

    def setup!
      @environments = []
      @envs.to_a.each { |env| @environments << Environment.new(env) }

      mount!
    end

    def mount!
      return unless current&.show

      @rails_config.rack_dev_mark.enable = true
      @rails_config.rack_dev_mark.theme = theme
      @rails_config.rack_dev_mark.env = current.name.to_s.titleize
    end

    private

    def current
      @current ||= @environments.find(&:condition)
    end

    def theme
      [:title, Rack::DevMark::Theme::GithubForkRibbon.new(position: @position)]
    end
  end
end
