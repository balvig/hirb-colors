require 'bundler'
Bundler.setup
Bundler::GemHelper.install_tasks

namespace :test do
  desc 'Run tests of hirb gem with hirb-colors'
  task :hirb do |t|
    gem 'hirb' # Load hirb specified in gemfile
    hirb_gem_path = Gem.loaded_specs["hirb"].full_gem_path
    test_path = File.expand_path(File.join(hirb_gem_path, 'test', '*_test.rb'))
    sh "bundle exec bacon -q hirb-colors.rb #{test_path}"
  end

  desc 'Run tests of hirb-color gem'
  task :colors do |t|
    sh 'bundle exec bacon -I. -q test/*_test.rb'
  end

end

desc 'Run all tests'
task :test => ["test:hirb", "test:colors"]

task :default => :test
