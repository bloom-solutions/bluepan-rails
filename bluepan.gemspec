$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bluepan/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bluepan-rails"
  s.version     = Bluepan::VERSION
  s.authors     = ["Ramon Tayag"]
  s.email       = ["ramon.tayag@gmail.com"]
  s.homepage    = "https://github.com/bloom-solutions/bluepan-rails"
  s.summary     = "Rails Engine for use with Bluepan"
  s.description = "Rails Engine for use with Bluepan"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2"
  s.add_dependency "light-service"
  s.add_dependency "bluepan_client", "~> 1.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "dotenv-rails"
  s.add_development_dependency "factory_bot_rails"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "vcr"
  s.add_development_dependency "webmock"
  s.add_development_dependency "database_cleaner"
end
