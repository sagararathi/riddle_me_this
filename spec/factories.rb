FactoryGirl.define do
<<<<<<< HEAD
	factory :comment do
		body { Faker::Lorem.paragraph }
		user_id { 1 }
		riddle_id { 1 }
	end
end

FactoryGirl.define do
	factory :user do
		username { Faker::Internet.user_name }
		email { Faker::Internet.free_email }
		password { "1234" }
	end
end

FactoryGirl.define do
	factory :riddle do
		title { Faker::Lorem.sentence }
		body { Faker::Lorem.sentence }
		answer { Faker::Lorem.sentence }
		user_id { 1 }
	end
=======
  factory :riddle do
     sequence(:title) { |n| "Title #{n}" }
     body "Body Here"
     answer "Answer here"
    user_id '1'
  end
>>>>>>> 3f2510e7bff7ca80c07e98f08d9e8d416d921619
end