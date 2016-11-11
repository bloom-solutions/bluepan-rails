require 'spec_helper'

require DUMMY_DIR.join("config", "environment")
require 'rspec/rails'
require "bluepan"

require "bluepan_client/factories"

RSpec.configure do |c|
  c.include FactoryGirl::Syntax::Methods
end

Dir[SPEC_DIR.join("support", "**", "*.rb")].each {|f| require f}
