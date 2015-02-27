class RiddlesController < ApplicationController
  def index
    @riddles = Riddle.all
  end

  def new
    @riddle = Riddle.new
  end

  def show
    find_riddle(params[:id])
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
    params.require(:riddle).permit(:title, :body, :answer, :user_id)
  end

  def find_riddle id
    @riddle = Riddle.find(id)
  end
end