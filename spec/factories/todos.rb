# spec/factories/todos.rb
FactoryGirl.define do
  factory :todo do
    title { Faker::Book.title }
    created_by { Faker::Name.name }

    after(:build) do |todo|
    	5.times do 
    		todo.items << FactoryGirl.build(:item)
    	end
  	end
  end
end