require 'spec_helper'

require DUMMY_DIR.join("config", "environment")
require 'rspec/rails'
require "bluepan"
require "factory_girl_rails"

RSpec.configure do |c|
  c.include FactoryGirl::Syntax::Methods
end

require "dotenv"
Dotenv.load(".env")

Dir[SPEC_DIR.join("support", "**", "*.rb")].each {|f| require f}

RSpec.configure do |c|

  c.before(:each) do |example|
    if %i[acceptance].include?(example.metadata[:type])
      ActiveJob::Base.queue_adapter = :inline
    else
      ActiveJob::Base.queue_adapter = :test
    end
  end

end
