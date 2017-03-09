# frozen_string_literal: true
require 'bundler'
Bundler::GemHelper.install_tasks
require 'rubocop/rake_task'

RuboCop::RakeTask.new

task default: [:rubocop, 'test:ruby']

require 'rake/testtask'
namespace :test do
  desc %(Run all tests)
  task all: [:rubocop, 'test:ruby']

  desc %(Test Ruby code)
  Rake::TestTask.new(:ruby) do |test|
    test.libs << 'lib' << 'test'
    test.test_files = Dir.glob("#{File.dirname(__FILE__)}/test/**/test_*.rb").sort
    test.warning = false
  end
end
