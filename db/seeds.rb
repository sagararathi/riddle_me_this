
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

NUM_USERS = 10
NUM_RIDDLES = 73
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

Riddle.create( title: "What has a foot but no ...", body: "What has a foot but no legs?",
answer: "A snail", user_id: (rand(10) + 1) )

Riddle.create( title: "Poor people have it. Ri...", body: "Poor people have it. Rich people need it. If you eat it you die. What is it?",
answer: "Nothing", user_id: (rand(10) + 1) )

Riddle.create( title: "What comes down but nev...", body: "What comes down but never goes up?",
answer: "Rain", user_id: (rand(10) + 1) )

Riddle.create( title: "I’m tall when I’m young...", body: "I’m tall when I’m young and I’m short when I’m old. What am I?",
answer: "A candle", user_id: (rand(10) + 1) )

Riddle.create( title: "Mary’s father has 5 dau...", body: "Mary’s father has 5 daughters – Nana, Nene, Nini, Nono. What is the fifth daughters name?",
answer: "If you answered Nunu, you are wrong. It’s Mary!", user_id: (rand(10) + 1) )

Riddle.create( title: "How can a pants pocket ...", body: "How can a pants pocket be empty and still have something in it?",
answer: "It can have a hole in it.", user_id: (rand(10) + 1) )

Riddle.create( title: "In a one-story pink hou...", body: "In a one-story pink house, there was a pink person, a pink cat, a pink fish, a pink computer, a pink chair, a pink table, a pink telephone, a pink shower– everything was pink! What color were the stairs?",
answer: "There weren’t any stairs, it was a one story house!", user_id: (rand(10) + 1) )

Riddle.create( title: "A dad and his son were ...", body: "A dad and his son were riding their bikes and crashed. Two ambulances came and took them to different hospitals. The man’s son was in the operating room and the doctor said, “I can’t operate on you. You’re my son.” How is that possible?",
answer: "The doctor is his mom!", user_id: (rand(10) + 1) )

Riddle.create( title: "What goes up when rain ...", body: "What goes up when rain comes down?",
answer: "An umbrella!", user_id: (rand(10) + 1) )

Riddle.create( title: "What is the longest wor...", body: "What is the longest word in the dictionary?",
answer: "Smiles, because there is a mile between each ‘s’", user_id: (rand(10) + 1) )

Riddle.create( title: "If I drink, I die. If i...", body: "If I drink, I die. If i eat, I am fine. What am I?",
answer: "A fire!", user_id: (rand(10) + 1) )

Riddle.create( title: "Throw away the outside ...", body: "Throw away the outside and cook the inside, then eat the outside and throw away the inside. What is it?",
answer: "Corn on the cob, because you throw away the husk, cook and eat the kernels, and throw away the cob.", user_id: (rand(10) + 1) )

Riddle.create( title: "What word becomes short...", body: "What word becomes shorter when you add two letters to it?",
answer: "Short", user_id: (rand(10) + 1) )

Riddle.create( title: "What travels around the...", body: "What travels around the world but stays in one spot?",
answer: "A stamp!", user_id: (rand(10) + 1) )

Riddle.create( title: "What occurs once in a m...", body: "What occurs once in a minute, twice in a moment and never in one thousand years?",
answer: "The letter M", user_id: (rand(10) + 1) )

Riddle.create( title: "What has 4 eyes but can...", body: "What has 4 eyes but can’t see?",
answer: "Mississippi", user_id: (rand(10) + 1) )

Riddle.create( title: "If I have it, I don’t s...", body: "If I have it, I don’t share it. If I share it, I don’t have it. What is it?",
answer: "A Secret.", user_id: (rand(10) + 1) )

Riddle.create( title: "Take away my first lett...", body: "Take away my first letter, and I still sound the same. Take away my last letter, I still sound the same. Even take away my letter in the middle, I will still sound the same. I am a five letter word. What am I?",
answer: "EMPTY", user_id: (rand(10) + 1) )

Riddle.create( title: "What has hands but can ...", body: "What has hands but can not clap?",
answer: "A clock", user_id: (rand(10) + 1) )

Riddle.create( title: "What can you catch but ...", body: "What can you catch but not throw?",
answer: "A cold.", user_id: (rand(10) + 1) )

Riddle.create( title: "A house has 4 walls. Al...", body: "A house has 4 walls. All of the walls are facing south, and a bear is circling the house. What color is the bear?",
answer: "The house is on the north pole, so the bear is white.", user_id: (rand(10) + 1) )

Riddle.create( title: "What is at the end of a...", body: "What is at the end of a rainbow?",
answer: "The letter W!", user_id: (rand(10) + 1) )

Riddle.create( title: "What is as light as a f...", body: "What is as light as a feather, but even the world’s strongest man couldn’t hold it for more than a minute?",
answer: "His breath!", user_id: (rand(10) + 1) )

Riddle.create( title: "What starts with the le...", body: "What starts with the letter “t”, is filled with “t” and ends in “t”?",
answer: "A teapot!", user_id: (rand(10) + 1) )

Riddle.create( title: "What is so delicate tha...", body: "What is so delicate that saying its name breaks it?",
answer: "Silence.", user_id: (rand(10) + 1) )

Riddle.create( title: "You walk into a room wi...", body: "You walk into a room with a match, a karosene lamp, a candle, and a fireplace. Which do you light first?",
answer: "The match.", user_id: (rand(10) + 1) )

Riddle.create( title: "A man was driving his t...", body: "A man was driving his truck. His lights were not on. The moon was not out. Up ahead, a woman was crossing the street. How did he see her?",
answer: "It was a bright and sunny day!", user_id: (rand(10) + 1) )

Riddle.create( title: "What kind of tree can y...", body: "What kind of tree can you carry in your hand?",
answer: "A palm!", user_id: (rand(10) + 1) )

Riddle.create( title: "If an electric train is...", body: "If an electric train is travelling south, which way is the smoke going?",
answer: "There is no smoke, it’s an electric train!", user_id: (rand(10) + 1) )

Riddle.create( title: "You draw a line. Withou...", body: "You draw a line. Without touching it, how do you make the line longer?",
answer: "You draw a shorter line next to it, and it becomes the longer line.", user_id: (rand(10) + 1) )

Riddle.create( title: "What has one eye but ca...", body: "What has one eye but cannot see?",
answer: "A needle", user_id: (rand(10) + 1) )

Riddle.create( title: "A man leaves home and t...", body: "A man leaves home and turns left three times, only to return home facing two men wearing masks. Who are those two men?",
answer: "A Catcher and Umpire.", user_id: (rand(10) + 1) )

Riddle.create( title: "Which weighs more, a po...", body: "Which weighs more, a pound of feathers or a pound of bricks?",
answer: "Neither, they both weigh one pound!", user_id: (rand(10) + 1) )

Riddle.create( title: "How many months have 28...", body: "How many months have 28 days?",
answer: "All 12 months!", user_id: (rand(10) + 1) )

Riddle.create( title: "A frog jumped into a po...", body: "A frog jumped into a pot of cream and started treading. He soon felt something solid under his feet and was able to hop out of the pot. What did the frog feel under his feet?",
answer: "The frog felt butter under his feet, because he churned the cream and made butter.", user_id: (rand(10) + 1) )

Riddle.create( title: "A horse is on a 24 foot...", body: "A horse is on a 24 foot chain and wants an apple that is 26 feet away. How can the horse get to the apple?",
answer: "The chain is not attached to anything.", user_id: (rand(10) + 1) )

Riddle.create( title: "If a blue house is made...", body: "If a blue house is made out of blue bricks, a yellow house is made out of yellow bricks and a pink house is made out of pink bricks, what is a green house made of?",
answer: "Glass", user_id: (rand(10) + 1) )

Riddle.create( title: "What goes up a chimney ...", body: "What goes up a chimney down but can’t come down a chimney up?",
answer: "an umberella", user_id: (rand(10) + 1) )

Riddle.create( title: "We see it once in a yea...", body: "We see it once in a year, twice in a week, and never in a day. What is it?",
answer: "The letter “E”", user_id: (rand(10) + 1) )

Riddle.create( title: "Mr. Blue lives in the b...", body: "Mr. Blue lives in the blue house, Mr. Pink lives in the pink house, and Mr. Brown lives in the brown house. Who lives in the white house?",
answer: "The president!", user_id: (rand(10) + 1) )

Riddle.create( title: "They come out at night ...", body: "They come out at night without being called, and are lost in the day without being stolen. What are they?",
answer: "Stars!", user_id: (rand(10) + 1) )

Riddle.create( title: "How do you make the num...", body: "How do you make the number one disappear?",
answer: "Add the letter G and it’s “GONE”", user_id: (rand(10) + 1) )

Riddle.create( title: "What goes up but never ...", body: "What goes up but never comes down?",
answer: "Your age!", user_id: (rand(10) + 1) )

Riddle.create( title: "Tuesday, Sam and Peter ...", body: "Tuesday, Sam and Peter went to a restaurant to eat lunch. After eating lunch, they paid the bill. But Sam and Peter did not pay the bill, so who did?",
answer: "Their friend, Tuesday.", user_id: (rand(10) + 1) )

Riddle.create( title: "What gets broken withou...", body: "What gets broken without being held?",
answer: "A promise.", user_id: (rand(10) + 1) )

Riddle.create( title: "What is always coming b...", body: "What is always coming but never arrives?",
answer: "Tomorrow", user_id: (rand(10) + 1) )

Riddle.create( title: "What goes through towns...", body: "What goes through towns and over hills but never moves?",
answer: "A Road", user_id: (rand(10) + 1) )

Riddle.create( title: "What has Eighty-eight k...", body: "What has Eighty-eight keys but can’t open a single door?",
answer: "A piano", user_id: (rand(10) + 1) )

Riddle.create( title: "What has a neck but no ...", body: "What has a neck but no head?",
answer: "A bottle", user_id: (rand(10) + 1) )

Riddle.create( title: "A monkey, a squirrel, a...", body: "A monkey, a squirrel, and a bird are racing to the top of a coconut tree. Who will get the banana first, the monkey, the squirrel, or the bird?",
answer: "None of them, because you can’t get a banana from a coconut tree!", user_id: (rand(10) + 1) )

Riddle.create( title: "Which eight-letter word...", body: "Which eight-letter word still remains a word after removing each letter from it?",
answer: "Starting-Staring-String-Sting-Sing-Sin-In-I.", user_id: (rand(10) + 1) )

Riddle.create( title: "What has a head but nev...", body: "What has a head but never weeps, has a bed but never sleeps, can run but never walks, and has a bank but no money?",
answer: "A river!", user_id: (rand(10) + 1) )

Riddle.create( title: "Two fathers and two son...", body: "Two fathers and two sons go on a fishing trip. They each catch a fish and bring it home. Why do they only bring 3 home?",
answer: "The fishing trip consists of a grandfather, a father and a son.", user_id: (rand(10) + 1) )

Riddle.create( title: "What has 4 legs in the ...", body: "What has 4 legs in the morning, 2 legs in the afternoon, and 3 legs at night?",
answer: "A person! As a baby you crawl (4 legs), as an adult you walk (2 legs), then when you are older you use a cane (3 legs)", user_id: (rand(10) + 1) )

Riddle.create( title: "The more it dries, the ...", body: "The more it dries, the wetter it becomes. What is it?",
answer: "A towel!", user_id: (rand(10) + 1) )

Riddle.create( title: "What can you hear but n...", body: "What can you hear but not touch or see?",
answer: "Your voice.", user_id: (rand(10) + 1) )

Riddle.create( title: "What starts with “P” an...", body: "What starts with “P” and ends with “E” and has more than 1000 letters?",
answer: "A post office!", user_id: (rand(10) + 1) )

Riddle.create( title: "What loses its head in ...", body: "What loses its head in the morning but gets it back at night?",
answer: "A pillow", user_id: (rand(10) + 1) )

Riddle.create( title: "What is something you w...", body: "What is something you will never see again?",
answer: "Yesterday", user_id: (rand(10) + 1) )

Riddle.create( title: "Jack rode into town on ...", body: "Jack rode into town on Friday and rode out 2 days later on Friday. How can that be possible?",
answer: "Friday is his horse’s name!", user_id: (rand(10) + 1) )

Riddle.create( title: "Can you name the two da...", body: "Can you name the two days starting with T besides Tuesday and Thursday?",
answer: "Today and tomorrow.", user_id: (rand(10) + 1) )

Riddle.create( title: "What is round on both s...", body: "What is round on both sides but high in the middle?",
answer: "Ohio.", user_id: (rand(10) + 1) )

Riddle.create( title: "If two’s company and th...", body: "If two’s company and three’s a crowd, what are four and five?",
answer: "Nine!", user_id: (rand(10) + 1) )

Riddle.create( title: "What is the center of G...", body: "What is the center of Gravity?",
answer: "The letter V.", user_id: (rand(10) + 1) )

Riddle.create( title: "What is the last thing ...", body: "What is the last thing you take off before bed?",
answer: "Your feet off the floor.", user_id: (rand(10) + 1) )

Riddle.create( title: "A lawyer, a plumber and...", body: "A lawyer, a plumber and a hat maker were walking down the street. Who had the biggest hat?",
answer: "The one with the biggest head.", user_id: (rand(10) + 1) )

Riddle.create( title: "What kind of room has n...", body: "What kind of room has no doors or windows?",
answer: "A mushroom.", user_id: (rand(10) + 1) )

Riddle.create( title: "I have keys but no lock...", body: "I have keys but no locks. I have space but no room. You can enter but can’t go outside. What am I?",
answer: "A Keyboard", user_id: (rand(10) + 1) )

Riddle.create( title: "What is next in this se...", body: "What is next in this sequence: JFMAMJJASON_ ?",
answer: "The letter D. The sequence contains the first letter of each month.", user_id: (rand(10) + 1) )

Riddle.create( title: "A man was cleaning the ...", body: "A man was cleaning the windows of a 25 story building. He slipped and fell off the ladder, but wasn’t hurt. How did he do it?",
answer: "He fell off the 2nd step.", user_id: (rand(10) + 1) )

Riddle.create( title: "How many seconds are th...", body: "How many seconds are there in a year?",
answer: "12. (January 2nd, February 2nd, March 2nd….)", user_id: (rand(10) + 1) )

Riddle.create( title: "One night, a butcher, a...", body: "One night, a butcher, a baker and a candlestick maker go to a hotel. When they get their bill, however, it’s for four people. Who’s the fourth person?",
answer: "One night can also mean one knight. That makes four: one knight, a butcher, a baker and a candlestick maker!", user_id: (rand(10) + 1) )

Riddle.create( title: "What instrument can you...", body: "What instrument can you hear but never see?",

answer: "Your voice! You can sing with your voice like an instrument and hear it, but no one can see it!", user_id: (rand(10) + 1) )

