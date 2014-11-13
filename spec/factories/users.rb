# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    username Faker::Internet.user_name('normal user')
    email Faker::Internet.safe_email
    password Faker::Internet.password
    location "#{Faker::Address.state}, #{Faker::Address.country}"
    climate 'Cool Temperate'
    short_bio Faker::Lorem.sentence(1)
    long_bio Faker::Lorem.paragraph(2)
    role 'user'
  end

  factory :moderator do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    username Faker::Internet.user_name('moderator')
    email Faker::Internet.safe_email
    password Faker::Internet.password
    location "#{Faker::Address.state}, #{Faker::Address.country}"
    climate 'Arid'
    short_bio Faker::Lorem.sentence(1)
    long_bio Faker::Lorem.paragraph(2)
    role 'moderator'
  end

  factory :admin do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    username Faker::Internet.user_name('super wizard admin')
    email Faker::Internet.safe_email
    password Faker::Internet.password
    location "#{Faker::Address.state}, #{Faker::Address.country}"
    climate 'Arid'
    short_bio Faker::Lorem.sentence(1)
    long_bio Faker::Lorem.paragraph(2)
    role 'admin'
  end

end
