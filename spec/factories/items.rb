# spec/factories/items.rb
FactoryGirl.define do
  factory :item do
    name { Faker::Beer.name }
    done false
  end
end