class RiddlesController < ApplicationController

skip_before_filter :ensure_current_user

  def index
    @ans_riddles = Riddle.where('answer IS NOT NULL')
    @uns_riddles = Riddle.where('answer IS NULL')
  end

  def new
    @riddle = Riddle.new
  end

  def show
    find_riddle(params[:id])
     @riddle_vote = RiddleVote.new
     vote_count(params[:id])
  end

  def create
    @riddle = Riddle.new riddle_params
    if @riddle.save
      redirect_to @riddle
    else
      render :new
    end
  end

  def edit
    find_riddle(params[:id])
  end

  def update
    find_riddle(params[:id])
    if @riddle.update_attributes(riddle_params)
      redirect_to @riddle
    else
      render :new
    end
  end

  def destroy
    riddle = Riddle.find_by(id: params[:id])

    riddle.destroy
    redirect_to riddles_path
  end

  private

  def riddle_params
    params.require(:riddle).permit(:title, :body, :answer).merge(user_id: current_user.id)
  end

  def find_riddle id
    @riddle = Riddle.find(id)
  end
  def vote_count id
    @count = RiddleVote.where(riddle_id: id).count
  end
end