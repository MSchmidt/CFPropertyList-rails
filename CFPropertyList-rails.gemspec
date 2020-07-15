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
  s.summary     = %q{CFPropertyList for rails3/4}
  s.description = %q{Binary Plist (CFPropertyList) renderer for rails3/4 apps.}
  s.license     = 'MIT'

  s.files       = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.md"]

  s.add_runtime_dependency(%q<CFPropertyList>, ["~> 2.3"])
  s.add_runtime_dependency(%q<railties>, [">= 3", "< 5"])
end
