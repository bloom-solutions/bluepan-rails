require 'rails_helper'

module Bluepan
  RSpec.describe SyncCities do

    let(:province) { build_stubbed(:bluepan_province) }

    it "calls actions in order" do
      actions = [
        InitializeBluepanClient,
        GetCities,
        CreateOrUpdateCities,
      ]

      ctx = LightService::Context.new(province: province)

      actions.each do |action|
        expect(action).to receive(:execute).with(ctx).and_return(ctx)
      end

      described_class.(province)
    end

  end
end
