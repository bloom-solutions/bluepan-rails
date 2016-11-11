require "bluepan/engine"

module Bluepan

  mattr_accessor :api_token, :api_secret

  def self.configure(&block)
    yield self
  end

end
