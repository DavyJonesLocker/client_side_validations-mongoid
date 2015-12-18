# ClientSideValidations-Mongoid #

[![Gem Version](https://badge.fury.io/rb/client_side_validations-mongoid.svg)](http://badge.fury.io/rb/client_side_validations-mongoid)
[![Build Status](https://secure.travis-ci.org/DavyJonesLocker/client_side_validations-mongoid.svg?branch=master)](https://travis-ci.org/DavyJonesLocker/client_side_validations-mongoid)
[![Dependency Status](https://gemnasium.com/DavyJonesLocker/client_side_validations-mongoid.svg)](https://gemnasium.com/DavyJonesLocker/client_side_validations-mongoid)
[![Code Climate](https://codeclimate.com/github/DavyJonesLocker/client_side_validations-mongoid/badges/gpa.svg)](https://codeclimate.com/github/DavyJonesLocker/client_side_validations-mongoid)
[![Coverage Status](https://coveralls.io/repos/DavyJonesLocker/client_side_validations-mongoid/badge.svg?branch=master)](https://coveralls.io/r/DavyJonesLocker/client_side_validations-mongoid?branch=master)

[Mongoid](https://github.com/plataformatec/mongoid) plugin for [ClientSideValidations](https://github.com/DavyJonesLocker/client_side_validations)

## Installation ##

In your Gemfile add the following:

```ruby
gem 'mongoid'
gem 'client_side_validations'
gem 'client_side_validations-mongoid'
```

Order matters here. `Mongoid` and `ClientSideValidations` need to be
required **before** `ClientSideValidations-Mongoid`.

[Follow the remaining installation instructions for ClientSideValidations](https://github.com/DavyJonesLocker/client_side_validations/blob/master/README.md)

## Usage ##

The usage is the same as `ClientSideValidations`, just pass `validate: true` to the form builder

```ruby
<%= form_for @book, validate: true do |book| %>
  <%= book.input :name %>
<% end %>
```

Per-input options are done with `:validate`

```ruby
<%= book.input :name, validate: { presence: true, uniqueness: false }
```

## Authors ##

[Brian Cardarella](http://twitter.com/bcardarella)

[Geremia Taglialatela](http://twitter.com/gtagliala)

[We are very thankful for the many contributors](https://github.com/DavyJonesLocker/client_side_validations-mongoid/graphs/contributors)

## Versioning ##

This gem follows [Semantic Versioning](http://semver.org)

Major and minor version numbers will follow `mongoid`'s major and
minor version numbers. For example,
`client_side_validations-mongoid-5.0.0` will be compatible up to
`~> mongoid-5.0.0`

## Want to help? ##

Please do! We are always looking to improve this gem. Please see our
[Contribution Guidelines](https://github.com/DavyJonesLocker/client_side_validations-mongoid/blob/master/CONTRIBUTING.md)
on how to properly submit issues and pull requests.

## Legal ##

[DockYard](http://dockyard.com), LLC &copy; 2012-2015

[@dockyard](http://twitter.com/dockyard)

[Licensed under the MIT license](http://www.opensource.org/licenses/mit-license.php)
