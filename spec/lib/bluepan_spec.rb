require 'rails_helper'

RSpec.describe Bluepan do

  describe ".configure" do
    it "allows configuration of accessors" do
      described_class.configure do |c|
        c.api_token = "abc"
        c.api_secret = "123"
      end

      expect(described_class.api_token).to eq "abc"
      expect(described_class.api_secret).to eq "123"
    end
  end

end
