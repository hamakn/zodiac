# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "zodiac/version"

Gem::Specification.new do |s|
  s.name        = "zodiac"
  s.version     = Zodiac::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Vsevolod Romashov"]
  s.email       = ["7@7vn.ru"]
  s.homepage    = ""
  s.summary     = %q{Zodiac sign calculator for any date}
  s.description = %q{Adds methods for getting a zodiac sign from any Date/Time object containing a date of birth}
  
  s.add_dependency 'funtimes'
  s.add_dependency 'i18n'
  s.add_development_dependency 'rspec'
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
