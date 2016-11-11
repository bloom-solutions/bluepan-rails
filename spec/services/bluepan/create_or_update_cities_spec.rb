require 'rails_helper'

module Bluepan
  RSpec.describe CreateOrUpdateCities do

    let(:remote_city_1) do
      build(:bluepan_client_city, {
        cityname_en: "AnHui",
        cityname_cn: "CAnHui",
      })
    end
    let(:remote_city_2) do
      build(:bluepan_client_city, {
        cityname_en: "AnQing",
        cityname_cn: "CAnQing",
      })
    end
    let(:city_1) { build_stubbed(:bluepan_city) }
    let(:city_2) { build_stubbed(:bluepan_city) }
    let(:remote_cities) { [remote_city_1, remote_city_2] }

    it "gets the province's cities from Bluepan and calls CreateOrUpdateCity" do
      {
        remote_city_1 => city_1,
        remote_city_2 => city_2,
      }.each do |remote_city, city|
        ctx = LightService::Context.new(city: city)
        expect(SyncCity).to receive(:call).with(remote_city).
          and_return(ctx)
      end

      resulting_ctx = described_class.execute(remote_cities: remote_cities)

      cities = resulting_ctx.cities
      expect(cities).to match_array([city_1, city_2])
    end

  end
end
