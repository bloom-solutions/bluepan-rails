FactoryBot.define do

  factory :bluepan_province, class: "Bluepan::Province" do
    sequence(:external_id) { |n| n }
    name_en "English Name"
    name_cn "Chinese Name"
  end

  factory :bluepan_city, class: "Bluepan::City" do
    sequence(:province_id) { |n| n }
    sequence(:external_id) { |n| n }
    name_en "English Name"
    name_cn "Chinese Name"
  end

end
