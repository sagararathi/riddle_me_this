class RiddleVotesController < ApplicationController

  def create
    @riddle_vote = RiddleVote.where(riddle_id: params[:riddle_id], user_id: current_user.id).first_or_create
    number = Riddle.find_by(id: params[:riddle_id]).riddle_votes.count
    respond_to do |format|
      format.html{redirect_to @riddle_vote.riddle}
      format.json{render json: number}
    end
  end

  private

  def riddle_votes_params
    params.require(:riddle).permit(:riddle_id).merge(user_id: current_user.id)
  end

end

