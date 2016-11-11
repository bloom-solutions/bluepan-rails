require 'rails_helper'

module Bluepan
  RSpec.describe GetCities do

    let(:client) { instance_double(BluepanClient::Client) }
    let(:province) { build_stubbed(:bluepan_province, external_id: 42) }
    let(:remote_city_1) do
      build(:bluepan_client_city, {
        provinceseq: 42,
        cityname_en: "English Name 1",
        cityname_cn: "Chinese Name 1",
      })
    end
    let(:remote_city_2) do
      build(:bluepan_client_city, {
        provinceseq: 42,
        cityname_en: "English Name 2",
        cityname_cn: "Chinese Name 2",
      })
    end
    let(:remote_cities) { [remote_city_1, remote_city_2] }
    let(:get_cities_response) do
      instance_double(BluepanClient::GetCitiesResponse, cities: remote_cities)
    end

    it "fetches the cities of the province" do
      expect(client).to receive(:get_cities).with(42).
        and_return(get_cities_response)
      resulting_ctx = described_class.execute(client: client, province: province)
      expect(resulting_ctx.remote_cities).to eq remote_cities
    end

  end
end
