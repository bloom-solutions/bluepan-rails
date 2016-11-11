module Bluepan
  class CreateOrUpdateProvince

    extend LightService::Action
    expects :remote_province
    promises :province

    executed do |c|
      province = Bluepan::Province.
        where(external_id: c.remote_province.provinceseq).
        first_or_initialize
      province.update_attributes!(
        name_en: c.remote_province.provincename_en,
        name_cn: c.remote_province.provincename_cn,
      )
      c.province = province
    end

  end
end
