# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "CFPropertyList-rails/version"

Gem::Specification.new do |s|
  s.name        = "CFPropertyList-rails"
  s.version     = CFPropertyList::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Matthias Schmidt"]
  s.email       = ["mail@m-schmidt.eu"]
  s.homepage    = "https://github.com/MSchmidt/CFPropertyList-rails"
  s.summary     = %q{CFPropertyList for rails3}
  s.description = %q{Binary Plist (CFPropertyList) renderer for rails3 apps.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency(%q<CFPropertyList>, ["= 2.0.17"])
  s.add_runtime_dependency(%q<railties>, ["~> 3.0"])
end
