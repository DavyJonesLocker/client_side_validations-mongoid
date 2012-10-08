# ClientSideValidations-Mongoid #

[![Build Status](https://secure.travis-ci.org/dockyard/client_side_validations-mongoid.png?branch=3-0-stable)](http://travis-ci.org/dockyard/client_side_validations-mongoid)
[![Dependency Status](https://gemnasium.com/dockyard/client_side_validations-mongoid.png?travis)](https://gemnasium.com/dockyard/client_side_validations-mongoid)
[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/dockyard/client_side_validations-mongoid)

[Mongoid](https://github.com/mongoid/mongoid) plugin for [ClientSideValidations](https://github.com/bcardarella/client_side_validations)

## Installation ##

In your Gemfile add the following:

```ruby
gem 'mongoid'
gem 'client_side_validations'
gem 'client_side_validations-mongoid'
```

Order matters here. `Mongoid` and `ClientSideValidations` need to be
required **before** `ClientSideValidations-Mongoid`.

[Follow the remaining installation instructions for ClientSideValidations](https://github.com/bcardarella/client_side_validations/tree/3-2-stable/README.md)

## Authors ##

[Brian Cardarella](http://twitter.com/bcardarella)

[We are very thankful for the many contributors](https://github.com/dockyard/client_side_validations-mongoid/graphs/contributors)

## Versioning ##

This gem follows [Semantic Versioning](http://semver.org)

Major and minor version numbers will follow `Rails`'s major and
minor version numbers. For example,
`client_side_validations-mongoid-3.0.0` will be compatible up to 
`~> mongoid-3.0.0`

## Want to help? ##

Please do! We are always looking to improve this gem. Please see our
[Contribution Guidelines](https://github.com/dockyard/client_side_validations-mongoid/blob/master/CONTRIBUTING.md)
on how to properly submit issues and pull requests.

## Legal ##

[DockYard](http://dockyard.com), LLC &copy; 2012

[@dockyard](http://twitter.com/dockyard)

[Licensed under the MIT license](http://www.opensource.org/licenses/mit-license.php)
