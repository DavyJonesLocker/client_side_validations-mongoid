require 'bundler'
Bundler::GemHelper.install_tasks

multitask default: 'test:ruby'

require 'rake/testtask'
namespace :test do
  desc %(Run all tests)
  multitask all: ['test:ruby', 'test:js']

  desc %(Test Ruby code)
  Rake::TestTask.new(:ruby) do |test|
    test.libs << 'lib' << 'test'
    test.test_files = Dir.glob("#{File.dirname(__FILE__)}/test/**/test_*.rb").sort
  end
end

