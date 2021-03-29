# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'armadillo/version'

Gem::Specification.new do |spec|
  spec.name          = 'armadillo'
  spec.version       = Armadillo::VERSION
  spec.authors       = ['linqueta']
  spec.email         = ['lincolnrodrs@gmail.com']

  spec.summary       = 'Armadillo'
  spec.description   = 'Petlove Environment Marker'
  spec.homepage      = 'https://https://github.com/petlove/armadillo'
  spec.license       = 'MIT'

  spec.files         = Dir['{app,config,lib}/**/*', 'CHANGELOG.md', 'MIT-LICENSE', 'README.md']

  spec.required_ruby_version = '>= 2.5.0'
  spec.add_dependency 'nokogiri', '>= 1.10.4'
  spec.add_dependency 'rack-dev-mark', '>= 0.7.8'
  spec.add_dependency 'rails', '>= 5.2.3'

  spec.add_development_dependency 'bundler', '~> 2.2.15'
  spec.add_development_dependency 'pry-byebug', '>= 3.7.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec-rails', '~> 5.0.1'
  spec.add_development_dependency 'rubocop', '>= 0.74.0'
  spec.add_development_dependency 'rubocop-performance', '>= 1.4.1'
  spec.add_development_dependency 'simplecov', '>= 0.17.0'
  spec.add_development_dependency 'simplecov-console', '>= 0.5.0'
end
