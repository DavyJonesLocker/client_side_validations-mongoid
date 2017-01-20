# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'client_side_validations/mongoid/version'

Gem::Specification.new do |spec|
  spec.name        = 'client_side_validations-mongoid'
  spec.version     = ClientSideValidations::Mongoid::VERSION
  spec.authors     = ['Geremia Taglialatela', 'Brian Cardarella']
  spec.email       = ['tagliala.dev@gmail.com', 'bcardarella@gmail.com']

  spec.summary     = 'Mongoid Plugin for ClientSideValidations'
  spec.description = 'Mongoid Plugin for ClientSideValidations'
  spec.homepage    = 'https://github.com/DavyJonesLocker/client_side_validations-mongoid'
  spec.license     = 'MIT'

  spec.platform    = Gem::Platform::RUBY

  spec.files         = `git ls-files -z -- {CHANGELOG.md,README.md,lib}`.split("\x0")
  spec.require_paths = ['lib']

  spec.add_dependency 'client_side_validations', '~> 6.0'
  spec.add_dependency 'mongoid', '~> 6.0'

  spec.add_development_dependency 'appraisal', '~> 2.1'
  spec.add_development_dependency 'byebug', '~> 9.0'
  spec.add_development_dependency 'coveralls', '~> 0.8.18'
  spec.add_development_dependency 'database_cleaner', '~> 1.5'
  spec.add_development_dependency 'm', '~> 1.5'
  spec.add_development_dependency 'minitest', '>= 4.7.5', '< 6.0.0'
  spec.add_development_dependency 'mocha', '~> 1.2'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rubocop', '~> 0.47.1'
  spec.add_development_dependency 'simplecov', '~> 0.12.0'
end
