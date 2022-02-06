FactoryBot.define do
  factory :profile do
    position_id { 2 }
    about_me    {'aあaあaあaあaあaあaあaあaあaあaあaあaあaあaあaあaあ'}

    association :user

    after(:buld) do |profile|
      profile.image.attach(io: File.open('public/image/cat-gdd55f827d_1280.jpg'), filename: 'cat-gdd55f827d_1280.jpg')
    end
  end
end
