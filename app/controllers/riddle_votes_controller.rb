class RiddleVotesController < ApplicationController



def create
@riddle_vote = RiddleVote.where(riddle_id: params[:riddle_id], user_id: current_user.id).first_or_create
redirect_to @riddle_vote.riddle
end

private

def riddle_votes_params
  params.require(:riddle).permit(:riddle_id).merge(user_id: current_user.id)
end

end

