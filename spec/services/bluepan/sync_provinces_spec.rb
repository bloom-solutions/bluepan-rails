require 'rails_helper'

module Bluepan
  RSpec.describe SyncProvinces do

    it "calls actions in order" do
      actions = [
        InitializeBluepanClient,
        GetProvinces,
        CreateOrUpdateProvinces,
      ]

      ctx = LightService::Context.new

      actions.each do |action|
        expect(action).to receive(:execute).with(ctx).and_return(ctx)
      end

      described_class.()
    end

  end
end
