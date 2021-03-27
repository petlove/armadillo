# frozen_string_literal: true

module Armadillo
  class Environment
    attr_accessor :name, :condition, :show

    def initialize(params)
      @name = params[:name]
      @condition = params[:condition]
      @show = params[:show]
    end
  end
end
