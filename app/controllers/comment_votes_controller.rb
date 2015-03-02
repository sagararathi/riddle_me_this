class CommentVotesController < ApplicationController
  def create
    @comment_vote = CommentVote.where(comment_id: params[:comment_id], user_id: current_user.id).first_or_create

    number = Comment.find_by(id: params[:comment_id]).comment_votes.count

    respond_to do |format|
      format.html{redirect_to @comment_vote.comment.riddle}
      format.json{render json: number}
    end
  end
end