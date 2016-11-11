module Bluepan
  class SyncCity

    extend LightService::Organizer

    def self.call(remote_city)
      with(remote_city: remote_city).reduce(
        CreateOrUpdateCity,
      )
    end

  end
end
