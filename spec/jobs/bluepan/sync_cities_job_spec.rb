require 'rails_helper'

module Bluepan
  RSpec.describe SyncCitiesJob do

    let(:province) { create(:bluepan_province) }

    it "delegates work to SyncCities" do
      expect(SyncCities).to receive(:call).with(province)
      described_class.perform_now(province)
    end

  end
end
