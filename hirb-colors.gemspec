# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hirb/colors/version"

Gem::Specification.new do |s|
  s.name        = "hirb-colors"
  s.version     = Hirb::Colors::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Cyrus Farajpour","Jens Balvig"]
  s.email       = ["smoils@gmail.com", "jens@balvig.com"]
  s.homepage    = ""
  s.summary     = %q{Color support for hirb}
  s.description = %q{Color support for hirb}

  s.add_dependency 'hirb', '~> 0.5'
  # Use the same test utility as `hirb`
  s.add_development_dependency 'bacon', '>= 1.1.0'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'mocha-on-bacon'
  s.add_development_dependency 'bacon-bits'
  s.add_development_dependency 'rake'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
