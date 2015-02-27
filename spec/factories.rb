FactoryGirl.define do
  factory :riddle do
     sequence(:title) { |n| "Title #{n}" }
     body "Body Here"
     answer "Answer here"
    user_id '1'
  end
end