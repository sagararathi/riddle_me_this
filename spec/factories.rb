FactoryGirl.define do
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
end