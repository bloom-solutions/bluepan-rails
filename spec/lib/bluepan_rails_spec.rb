require 'spec_helper'

RSpec.describe BluepanRails do

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
