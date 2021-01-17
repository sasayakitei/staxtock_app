FactoryBot.define do
  factory :user do
    pass = Faker::Internet.password(min_length: 6)

    email                 { Faker::Internet.email }
    name                  { '' }
    password              { pass }
    password_confirmation { pass }
  end
end
