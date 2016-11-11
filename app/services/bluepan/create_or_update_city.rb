module Bluepan
  class CreateOrUpdateCity

    extend LightService::Action
    expects :remote_city
    promises :city

    executed do |c|
      province = Bluepan::Province.
        find_by!(external_id: c.remote_city.provinceseq)

      city = province.cities.
        where(external_id: c.remote_city.cityseq).
        first_or_initialize

      city.update_attributes!(
        name_en: c.remote_city.cityname_en,
        name_cn: c.remote_city.cityname_cn,
      )

      c.city = city
    end

  end
end
