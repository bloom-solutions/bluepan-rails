require 'rails_helper'

module Bluepan
  RSpec.describe GetProvinces do

    let(:client) { instance_double(BluepanClient::Client) }
    let(:province_1) { build(:bluepan_client_province) }
    let(:province_2) { build(:bluepan_client_province) }
    let(:get_provinces_response) do
      instance_double(BluepanClient::GetProvincesResponse, provinces: provinces)
    end
    let(:provinces) { [province_1, province_2] }

    it "gets the provinces from Bluepan" do
      expect(client).to receive(:get_provinces).
        and_return(get_provinces_response)

      resulting_ctx = described_class.execute(client: client)

      remote_provinces = resulting_ctx.remote_provinces
      expect(remote_provinces).to eq provinces
      expect(remote_provinces.sample).to be_a BluepanClient::Province
    end

  end
end
