module Bluepan
  class GetCities

    extend LightService::Action
    expects :client, :province
    promises :remote_cities

    executed do |c|
      c.remote_cities = c.client.get_cities(c.province.external_id).cities
    end

  end
end
