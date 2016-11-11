require 'rails_helper'

module Bluepan
  RSpec.describe CreateOrUpdateProvinces do

    let(:remote_province_1) do
      build(:bluepan_client_province, {
        provincename_en: "Shanghai",
        provincename_cn: "CShanghai",
      })
    end
    let(:remote_province_2) do
      build(:bluepan_client_province, {
        provincename_en: "Guangdong",
        provincename_cn: "CGuangdong",
      })
    end
    let(:province_1) { create(:bluepan_province) }
    let(:province_2) { create(:bluepan_province) }
    let(:remote_provinces) { [remote_province_1, remote_province_2] }

    it "gets the provinces from Bluepan and enqueues the sync cities job" do
      {
        remote_province_1 => province_1,
        remote_province_2 => province_2,
      }.each do |remote_province, province|
        ctx = LightService::Context.new(province: province)
        expect(SyncProvince).to receive(:call).with(remote_province).
          and_return(ctx)
      end

      resulting_ctx = described_class.execute(remote_provinces: remote_provinces)

      provinces = resulting_ctx.provinces
      expect(provinces).to match_array([province_1, province_2])
    end

  end
end
