$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bluepan/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bluepan-rails"
  s.version     = Bluepan::VERSION
  s.authors     = ["Ramon Tayag"]
  s.email       = ["ramon.tayag@gmail.com"]
  s.homepage    = "https://github.com/imacchiato/bluepan-rails"
  s.summary     = "Rails Engine for use with Bluepan"
  s.description = "Rails Engine for use with Bluepan"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
