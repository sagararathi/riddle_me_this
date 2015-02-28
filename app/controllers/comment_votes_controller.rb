class CommentVotesController < ApplicationController
  def create
    @comment_vote = CommentVote.where(comment_id: params[:comment_id], user_id: current_user.id).first_or_create

    redirect_to @comment_vote.comment.riddle
  end
end