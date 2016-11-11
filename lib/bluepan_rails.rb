require "bluepan_rails/engine"

module BluepanRails

  mattr_accessor :api_token, :api_secret

  def self.configure(&block)
    yield self
  end

end
