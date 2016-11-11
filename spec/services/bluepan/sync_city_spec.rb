require 'rails_helper'

module Bluepan
  RSpec.describe SyncCity do

    let(:remote_city) { build(:bluepan_client_city) }

    it "calls actions in order" do
      actions = [
        CreateOrUpdateCity,
      ]

      ctx = LightService::Context.new(remote_city: remote_city)

      actions.each do |action|
        expect(action).to receive(:execute).with(ctx).and_return(ctx)
      end

      described_class.call(remote_city)
    end

  end
end
