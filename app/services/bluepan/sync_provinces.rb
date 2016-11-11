module Bluepan
  class SyncProvinces

    extend LightService::Organizer

    def self.call
      reduce(
        InitializeBluepanClient,
        GetProvinces,
        CreateOrUpdateProvinces,
      )
    end

  end
end
