# -*- encoding: utf-8 -*-
require File.expand_path('../lib/client_side_validations/mongoid/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Brian Cardarella"]
  gem.email         = ["bcardarella@gmail.com"]
  gem.description   = %q{Mongoid Plugin for ClientSideValidaitons}
  gem.summary       = %q{Mongoid Plugin for ClientSideValidations}
  gem.homepage      = 'https://github.com/dockyard/client_side_validations-mongoid'

  gem.files         = `git ls-files -- {lib/*,vendor/*,*.gemspec}`.split("\n")
  gem.name          = 'client_side_validations-mongoid'
  gem.require_paths = ['lib']
  gem.version       = ClientSideValidations::Mongoid::VERSION

  gem.add_dependency 'client_side_validations', '~> 3.2.0'
  gem.add_dependency 'mongoid', '~> 4.0.0'

  gem.add_development_dependency 'bson_ext'
  gem.add_development_dependency 'rails', '~> 4.0.0'
  gem.add_development_dependency 'mocha'
  gem.add_development_dependency 'm'
end
