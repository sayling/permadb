# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :plant do
    common_name 'Blah Plant'
    scientific_name 'Blah Scientific plant Name '
    image 'http://superimages.com/image '
    description 'Blah example description'
    country_of_origin 'Scandinavia'
    botanical_properties 'MyText'
    domestic_properties 'MyText'
    climate 'MyString'
    growing_instructions 'Do stuff and then it will grow. Yay!'
    user_id { FactoryGirl.create(:user).id }
  end
end
