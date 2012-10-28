$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "squirrel/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "squirrel"
  s.version     = Squirrel::VERSION
  s.authors     = ["Lars Brillert"]
  s.email       = ["lars@railslove.com"]
  s.homepage    = "http://railslove.com"
  s.summary     = "Keep track of your Code Releases with Squirrel."
  s.description = "Keep track of your Code Releases with Squirrel."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "activesupport", "~> 3.2.0"
  s.add_dependency "httparty"
  s.add_development_dependency "rake"
end
