module Bluepan
  class SyncCities

    extend LightService::Organizer

    def self.call(province)
      with(province: province).reduce(
        InitializeBluepanClient,
        GetCities,
        CreateOrUpdateCities,
      )
    end

  end
end
