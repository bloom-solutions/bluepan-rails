module Bluepan
  class SyncProvince

    extend LightService::Organizer

    def self.call(remote_province)
      with(remote_province: remote_province).reduce(
        CreateOrUpdateProvince,
        EnqueueSyncCitiesJob,
      )
    end

  end
end
