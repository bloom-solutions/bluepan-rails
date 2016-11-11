module Bluepan
  class CreateOrUpdateCities

    extend LightService::Action
    expects :remote_cities
    promises :cities

    executed do |c|
      c.cities = c.remote_cities.map do |remote_city|
        SyncCity.(remote_city)[:city]
      end
    end

  end
end
