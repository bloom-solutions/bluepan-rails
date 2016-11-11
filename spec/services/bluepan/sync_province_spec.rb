require 'rails_helper'

module Bluepan
  RSpec.describe SyncProvince do

    let(:remote_province) { build(:bluepan_client_province) }

    it "calls actions in order" do
      actions = [
        CreateOrUpdateProvince,
        EnqueueSyncCitiesJob,
      ]

      ctx = LightService::Context.new(remote_province: remote_province)

      actions.each do |action|
        expect(action).to receive(:execute).with(ctx).and_return(ctx)
      end

      described_class.(remote_province)
    end

  end
end
