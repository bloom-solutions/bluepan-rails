module Bluepan
  class SyncCitiesJob < ApplicationJob

    def perform(province)
      SyncCities.(province)
    end

  end
end
