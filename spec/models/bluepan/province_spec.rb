require 'rails_helper'

module Bluepan
  RSpec.describe Province, type: %i[model] do

    describe "associations" do
      it { is_expected.to have_many(:cities) }
    end

  end
end
