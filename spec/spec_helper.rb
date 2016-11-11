require "pathname"
SPEC_DIR = Pathname.new(File.dirname(__FILE__))
DUMMY_DIR = SPEC_DIR.join("dummy")

require DUMMY_DIR.join("config", "environment")
require 'rspec/rails'
require "bluepan"
