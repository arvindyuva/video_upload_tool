FactoryBot.define do
  
  factory :user do
    email     { Faker::Internet.email }
    password     "password"
    password_confirmation  "password"
  end

  factory :video do
    title Faker::Name.name
    description Faker::Name.title
    # video {File.new("#{Rails.root}"+"/public/"+"sample.mp4")
  end
end