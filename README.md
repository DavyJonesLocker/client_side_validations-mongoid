# ClientSideValidations-Mongoid #

[![Gem Version](https://badge.fury.io/rb/client_side_validations-mongoid.svg)](https://badge.fury.io/rb/client_side_validations-mongoid)
[![Build Status](https://github.com/DavyJonesLocker/client_side_validations-mongoid/actions/workflows/ruby.yml/badge.svg)](https://github.com/DavyJonesLocker/client_side_validations-mongoid/actions)
[![Maintainability](https://api.codeclimate.com/v1/badges/4f8300006c02f7f4aa6d/maintainability)](https://codeclimate.com/github/DavyJonesLocker/client_side_validations-mongoid/maintainability)
[![Coverage Status](https://coveralls.io/repos/DavyJonesLocker/client_side_validations-mongoid/badge.svg?branch=main)](https://coveralls.io/r/DavyJonesLocker/client_side_validations-mongoid?branch=main)

[Mongoid](https://docs.mongodb.com/mongoid/master/#ruby-mongoid-tutorial) plugin for [ClientSideValidations](https://github.com/DavyJonesLocker/client_side_validations)

## Installation ##

In your Gemfile add the following:

```ruby
gem 'mongoid'
gem 'client_side_validations'
gem 'client_side_validations-mongoid'
```

Order matters here. `Mongoid` and `ClientSideValidations` need to be
required **before** `ClientSideValidations-Mongoid`.

[Follow the remaining installation instructions for ClientSideValidations](https://github.com/DavyJonesLocker/client_side_validations/blob/main/README.md)

## Usage ##

The usage is the same as `ClientSideValidations`, just pass `validate: true` to the form builder

```ruby
<%= form_for @book, validate: true do |book| %>
  <%= book.input :name %>
<% end %>
```

Per-input options are done with `:validate`

```ruby
<%= book.input :name, validate: { presence: true, uniqueness: false } %>
```

## Authors ##

[Brian Cardarella](https://twitter.com/bcardarella)

[Geremia Taglialatela](https://twitter.com/gtagliala)

[We are very thankful for the many contributors](https://github.com/DavyJonesLocker/client_side_validations-mongoid/graphs/contributors)

## Versioning ##

This gem follows [Semantic Versioning](https://semver.org)

## Want to help? ##

Please do! We are always looking to improve this gem. Please see our
[Contribution Guidelines](https://github.com/DavyJonesLocker/client_side_validations-mongoid/blob/main/CONTRIBUTING.md)
on how to properly submit issues and pull requests.

## Legal ##

[DockYard](https://dockyard.com/), LLC &copy; 2012-2021

[@dockyard](https://twitter.com/dockyard)

[Licensed under the MIT license](https://opensource.org/licenses/mit-license.php)
