require 'rails_helper'

module Bluepan
  RSpec.describe CreateOrUpdateCity do

    let!(:province) { create(:bluepan_province, external_id: 23) }

    context "city does not exist" do
      let(:remote_city) do
        build(:bluepan_client_city, {
          provinceseq: 23,
          cityseq: 2,
          cityname_en: "AnHui",
          cityname_cn: "CAnHui",
        })
      end

      it "creates the city" do
        city = described_class.execute(remote_city: remote_city).city

        expect(city.province).to eq province
        expect(city.external_id).to eq 2
        expect(city.name_en).to eq "AnHui"
        expect(city.name_cn).to eq "CAnHui"
      end
    end

    context "city exists" do
      let(:remote_city) do
        build(:bluepan_client_city, {
          provinceseq: province.external_id,
          cityseq: 2,
          cityname_en: "AnHui",
          cityname_cn: "CAnHui",
        })
      end
      let!(:city) do
        create(:bluepan_city, {
          province: province,
          external_id: 2,
          name_en: "ANhai",
          name_cn: "CANhai",
        })
      end

      it "updates the city" do
        city = described_class.execute(remote_city: remote_city).city

        expect(city.province).to eq province
        expect(city.external_id).to eq 2
        expect(city.name_en).to eq "AnHui"
        expect(city.name_cn).to eq "CAnHui"
      end
    end

  end
end
