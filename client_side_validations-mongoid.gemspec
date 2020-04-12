# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'client_side_validations/mongoid/version'

Gem::Specification.new do |spec|
  spec.name        = 'client_side_validations-mongoid'
  spec.version     = ClientSideValidations::Mongoid::VERSION
  spec.authors     = ['Geremia Taglialatela', 'Brian Cardarella']
  spec.email       = ['tagliala.dev@gmail.com', 'bcardarella@gmail.com']

  spec.summary     = 'ClientSideValidations Mongoid'
  spec.description = 'Mongoid Plugin for ClientSideValidations'
  spec.homepage    = 'https://github.com/DavyJonesLocker/client_side_validations-mongoid'
  spec.license     = 'MIT'

  spec.platform    = Gem::Platform::RUBY

  spec.files         = `git ls-files -z -- {CHANGELOG.md,LICENSE.md,README.md,lib}`.split("\x0")
  spec.require_paths = ['lib']

  spec.required_ruby_version = '~> 2.3'

  spec.add_dependency 'client_side_validations', '>= 15.0', '< 17.0'
  spec.add_dependency 'mongoid', '>= 6.0', '< 8'

  spec.add_development_dependency 'appraisal', '~> 2.2'
  spec.add_development_dependency 'byebug', '>= 10', '< 12'
  spec.add_development_dependency 'coveralls_reborn', '~> 0.14.0'
  spec.add_development_dependency 'database_cleaner', '~> 1.7'
  spec.add_development_dependency 'm', '~> 1.5'
  spec.add_development_dependency 'minitest', '~> 5.12'
  spec.add_development_dependency 'mocha', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rubocop', '~> 0.75.0'
  spec.add_development_dependency 'rubocop-performance', '~> 1.5'
  spec.add_development_dependency 'rubocop-rails', '~> 2.3'
  spec.add_development_dependency 'simplecov', '~> 0.17.1'
end
