require 'rails_helper'

module Bluepan
  RSpec.describe EnqueueSyncCitiesJob do

    let(:province) { create(:bluepan_province) }

    it "enqueues a SyncCitiesJob for the province" do
      expect {
        described_class.execute(province: province)
      }.to have_enqueued_job.with(province)
    end

  end
end
