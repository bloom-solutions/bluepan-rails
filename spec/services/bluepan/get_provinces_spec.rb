require 'rails_helper'

module Bluepan
  RSpec.describe GetProvinces do

    let(:client) { instance_double(BluepanClient::Client) }
    let(:province_1) { build(:bluepan_client_province) }
    let(:province_2) { build(:bluepan_client_province) }
    let(:provinces) { [province_1, province_2] }

    it "gets the provinces from Bluepan" do
      expect(client).to receive(:get_provinces).and_return(provinces)

      resulting_ctx = described_class.execute(client: client)

      provinces = resulting_ctx.remote_provinces
      expect(provinces).to_not be_empty
      expect(provinces.sample).to be_a BluepanClient::Province
    end

  end
end
