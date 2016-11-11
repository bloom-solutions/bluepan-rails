require 'rails_helper'

module Bluepan
  RSpec.describe SyncProvincesJob do

    it "delegates work to SyncProvinces" do
      expect(SyncProvinces).to receive(:call)
      described_class.perform_now
    end

  end
end
