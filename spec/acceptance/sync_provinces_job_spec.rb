require 'rails_helper'

module Bluepan
  RSpec.describe SyncProvincesJob, vcr: {record: :once}, type: :acceptance do

    it "copies the provinces and their cities" do
      described_class.perform_now

      expect(Province.all).to_not be_empty
      expect(City.all).to_not be_empty
      expect(City.all.sample.province).to be_present
    end

  end
end
