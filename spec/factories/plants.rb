# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :plant do
    common_name "MyString"
    scientific_name "MyString"
    image "MyString"
    description "MyText"
    country_of_origin "MyString"
    botanical_properties "MyText"
    domestic_properties "MyText"
    climate "MyString"
    growing_instructions "MyText"
    user nil
  end
end
