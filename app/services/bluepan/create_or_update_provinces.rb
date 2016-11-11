module Bluepan
  class CreateOrUpdateProvinces

    extend LightService::Action
    expects :remote_provinces
    promises :provinces

    executed do |c|
      c.provinces = c.remote_provinces.map do |remote_province|
        SyncProvince.(remote_province)[:province]
      end
    end

  end
end
