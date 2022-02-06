FactoryBot.define do
  factory :user do
    name                  {'test'}
    email                 {'test@test.com'}
    password              {'a1a1a1a1'}
    password_confirmation { password }
  end
end
