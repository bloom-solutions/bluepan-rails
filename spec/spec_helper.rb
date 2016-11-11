require "pathname"
SPEC_DIR = Pathname.new(File.dirname(__FILE__))
DUMMY_DIR = SPEC_DIR.join("dummy")
require 'pry'
require 'pry-byebug'
