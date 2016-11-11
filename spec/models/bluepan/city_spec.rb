require 'rails_helper'

module Bluepan
  RSpec.describe City, type: %i[model] do

    describe "associations" do
      it { is_expected.to belong_to(:province) }
    end

  end
end
