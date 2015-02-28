NUM_USERS = 10
NUM_RIDDLES = 77
NUM_RIDDLE_VOTES = NUM_RIDDLES * 2
NUM_COMMENTS = NUM_RIDDLES * 5
NUM_COMMENT_VOTES = NUM_COMMENTS * 2

(NUM_USERS).times do
  User.create(
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
    )
end

(NUM_COMMENTS).times do
  Comment.create(
    body: Faker::Lorem.paragraph,
    riddle_id: rand(1..NUM_RIDDLES),
    user_id: rand(1..NUM_USERS)
    )
end

(NUM_RIDDLE_VOTES).times do
  RiddleVote.create(
    riddle_id: rand(1..NUM_RIDDLES),
    user_id: rand(1..NUM_USERS)
    )
end

(NUM_COMMENT_VOTES).times do
  CommentVote.create(
    comment_id: rand(1..NUM_COMMENTS),
    user_id: rand(1..NUM_USERS)
    )
end