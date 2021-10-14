FactoryBot.define do
  factory :user do
    email { FFaker::Internet.email }
    password { 'blablabla' }
    password_confirmation { 'blablabla' }
  end
end
