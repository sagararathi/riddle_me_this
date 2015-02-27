class CommentsController < ApplicationController
  
  def new
  	@riddle = Riddle.find_by_id(params[:riddle_id])
  	@comment = Comment.new
  end

  def create
  	session[:user_id] = 1
  	new_comment = Comment.create(comment_params)

  	if new_comment.save
  	  riddle = Riddle.find_by_id(params[:riddle_id])
  	  user = User.find_by_id(session[:user_id])
  	  riddle.comments << new_comment
  	  user.comments << new_comment
  		redirect_to riddle_path(riddle) #Might just be riddle instead
  	else
  		render :new
  	end
  end

  def edit
  	@comment = Comment.find_by_id(params[:id])
  end

  def update
  	@comment = Comment.find_by_id(params[:id])
  end

  def destroy
  	comment = Comment.find_by_id(params[:id])
  	comment.destroy
  	redirect_to riddle.find_by_id(params[:riddle_id])
  end

  private

  def comment_params
  	params.require(:comment).permit(:body)
  end

end