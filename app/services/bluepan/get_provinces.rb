module Bluepan
  class GetProvinces

    extend LightService::Action
    expects :client
    promises :remote_provinces

    executed do |c|
      c.remote_provinces = c.client.get_provinces.provinces
    end

  end
end
