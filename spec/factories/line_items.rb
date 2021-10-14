FactoryBot.define do
  factory :line_item do
    association :cart, :product
  end
end
