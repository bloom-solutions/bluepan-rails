module Bluepan
  class EnqueueSyncCitiesJob

    extend LightService::Action
    expects :province

    executed do |c|
      SyncCitiesJob.perform_later(c.province)
    end

  end
end
