# -*- encoding: utf-8 -*-
require File.expand_path('../lib/client_side_validations/mongoid/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'client_side_validations-mongoid'
  s.version     = ClientSideValidations::Mongoid::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brian Cardarella"]
  s.email       = ["bcardarella@gmail.com"]
  s.homepage    = 'https://github.com/DavyJonesLocker/client_side_validations-mongoid'
  s.summary     = %q{Mongoid Plugin for ClientSideValidations}
  s.description = %q{Mongoid Plugin for ClientSideValidations}
  s.license     = 'MIT'

  s.files         = `git ls-files -- {lib/*,vendor/*,*.gemspec}`.split("\n")
  s.require_paths = ['lib']

  s.add_dependency 'client_side_validations', '~> 4.2.0'
  s.add_dependency 'mongoid', '~> 4.0'

  s.add_development_dependency 'appraisal', '~> 2.0'
  s.add_development_dependency 'coveralls', '~> 0.8.1'
  s.add_development_dependency 'm', '~> 1.3'
  s.add_development_dependency 'minitest', '>= 4.7.5', '< 6.0.0'
  s.add_development_dependency 'mocha', '~> 1.1'
  s.add_development_dependency 'simplecov', '~> 0.10.0'

  if Gem::Version.new(RUBY_VERSION.dup) >= Gem::Version.new('2.0')
    s.add_development_dependency 'byebug', '~> 5.0'
  else
    s.add_development_dependency 'debugger', '~> 1.6'
  end
end
