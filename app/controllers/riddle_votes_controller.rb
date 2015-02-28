class RiddleVotesController < ApplicationController

def new
  @riddle_vote = RiddleVote.new
end

def create
@riddle_vote = RiddleVote.where(riddle_votes_params).first_or_create
end

private

def riddle_votes_params
  params.require(:riddle).permit(:user_id, :riddle_id)
end

end

