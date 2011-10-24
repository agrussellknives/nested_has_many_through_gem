# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nested_has_many_through_gem/version"

Gem::Specification.new do |s|
  s.name        = "nested_has_many_through_gem"
  s.version     = NestedHasManyThroughGem::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Stephen Prater"]
  s.email       = ["stephenp@agrussell.com"]
  s.homepage    = ""
  s.summary     = %q{A gemified version of the nested_has_many_through plugin}
  s.description = %q{See the nested_has_man_through plugin at http://github.com/releod/nested_has_many_through }

  s.rubyforge_project = "nested_has_many_through_gem"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'rails','3.0.10'

  s.add_development_dependency('rspec')
  s.add_development_dependency('rspec-rails')
  s.add_development_dependency('simplecov')
  s.add_development_dependency('rspec-prof')
  s.add_development_dependency('i18n')
  s.add_development_dependency('ruby-debug19')
  s.add_development_dependency('sqlite3')
  s.add_development_dependency('pry')
end
