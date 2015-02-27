require 'rails_helper'

describe 'CommentsController' do
	let (:user) { FactoryGirl.create :user }
	let (:riddle) { FactoryGirl.create :riddle }
	let (:comment) { FactoryGirl.create :comment } 

	before do 
		user
		riddle
		comment
	end

	# This might be helpful in the 'riddle#show'
	# describe '#index' do

	# 	it 'should display all comments' do 
	# 		get :index
	# 		expect(response).to be_success
	# 		expect(response.body).to include (comment.body)
	# 	end

	# end

	# describe '#show' do

	# 	it 'should display a single comment' do
	# 		get :show
	# 		expect(response).to be_success
	# 		expect(response.body).to include (comment.body)
	# 	end

	# end

	describe '#new' do
		it 'assigns the comment to Comment.new' do
			get :new
			expect(assigns(:comment)).to be_a_new(Comment)
		end
	end

	describe '#create' do
		it 'should create a new comment if valid params' do
			expect {
				post :create, comment: {
					body: 'Cool riddle',
					user_id: 2,
					riddle_id: 2
				}
			}.to change { Comment.count }.by(1)
		end
	end

	describe '#edit' do
		it 'assigns the comment to the comment' do
			get :edit, id: comment.id
			expect(assigns(:comment)).to eq(comment)
		end
	end

	describe '#update' do
		it 'updates the comment if valid params' do
			expect {
				put :update, id: comment.id, comment: {
					body: 'Not a cool riddle'
				}
			}.to change { comment.reload.title }.to('Not a cool riddle')
		end
	end

	describe '#destroy' do
		it 'should remove the comment' do
			expect {
				delete :destroy, id: comment.id
			}.to change { Comment.count }.by(-1)
		end
	end


end