require 'rails_helper'

module Bluepan
  RSpec.describe CreateOrUpdateProvince do

    context "province does not exist" do
      let(:remote_province) do
        build(:bluepan_client_province, {
          provinceseq: 2,
          provincename_en: "Shanghai",
          provincename_cn: "CShanghai",
        })
      end

      it "creates the province" do
        province = described_class.
          execute(remote_province: remote_province).
          province

        expect(province.external_id).to eq 2
        expect(province.name_en).to eq "Shanghai"
        expect(province.name_cn).to eq "CShanghai"
      end
    end

    context "province exists" do
      let(:remote_province) do
        build(:bluepan_client_province, {
          provinceseq: 2,
          provincename_en: "Shanghai",
          provincename_cn: "CShanghai",
        })
      end
      let!(:province) do
        create(:bluepan_province, {
          external_id: 2,
          name_en: "SHANGhai",
          name_cn: "CSHANGhai",
        })
      end

      it "updates the province" do
        province = described_class.
          execute(remote_province: remote_province).
          province

        expect(province.external_id).to eq 2
        expect(province.name_en).to eq "Shanghai"
        expect(province.name_cn).to eq "CShanghai"
      end
    end

  end
end
