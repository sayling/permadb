# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :animal do
    common_name "MyString"
    scientific_name "MyString"
    image "MyString"
    description "MyText"
    country_of_origin "MyString"
    biological_properties "MyText"
    domestic_properties "MyText"
    best_climate "MyString"
    rearing_info "MyText"
    diet "MyText"
    user nil
  end
end
