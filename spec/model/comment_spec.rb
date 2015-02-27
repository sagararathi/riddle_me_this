require 'rails_helper'

describe 'Comments' do
	let (:user) { User.create(id: 1, username: "aaa", email: "bbb", password: "1234") }
	let (:riddle) { Riddle.create(id: 1, title: "Riddle 1", body: "This is a body", answer: "Stuff", user_id: 1) }
	let (:comment) { Comment.create(id: 1, body: "Cool riddle", riddle_id: 1, user_id: 1) } 

	before do 
		user
		riddle
		comment
	end

	it 'should respond to user' do
		expect(comment.user).to be_a User
	end

	it 'should repsond to riddle' do
		expect(comment.riddle).to be_a Riddle
	end

end