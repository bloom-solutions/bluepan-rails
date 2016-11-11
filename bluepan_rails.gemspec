$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bluepan_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bluepan_rails"
  s.version     = BluepanRails::VERSION
  s.authors     = ["Ramon Tayag"]
  s.email       = ["ramon.tayag@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of BluepanRails."
  s.description = "TODO: Description of BluepanRails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5.1"

  s.add_development_dependency "sqlite3"
end
