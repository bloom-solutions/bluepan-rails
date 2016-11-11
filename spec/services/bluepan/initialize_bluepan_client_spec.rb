require 'rails_helper'

module Bluepan
  RSpec.describe InitializeBluepanClient do

    let(:api_token) { "abc" }
    let(:api_secret) { "123" }

    it "initializes a BluepanClient::Client in the context" do
      Bluepan.configure do |c|
        c.api_token = api_token
        c.api_secret = api_secret
      end

      resulting_ctx = described_class.execute

      client = resulting_ctx.client
      expect(client.api_token).to eq api_token
      expect(client.api_secret).to eq api_secret

      # Restore the ENV
      Bluepan.configure do |c|
        c.api_token = ENV["API_TOKEN"]
        c.api_secret = ENV["API_SECRET"]
      end
    end

  end
end
