class RiddlesController < ApplicationController
<<<<<<< HEAD
  
  def show
  	@riddle = Riddle.find_by_id(params[:id])
  end

=======

  def index
    @riddle = Riddle.all
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
      redirect_to 'show'
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
    find_riddle(params[:id]).destroy
    redirect_to 'index'
  end

  private

  def riddle_params
    params.require(:riddle).permit(:title, :body, :answer, :user_id)
  end

  def find_riddle id
    @riddle = Riddle.find(id)
  end
>>>>>>> 3f2510e7bff7ca80c07e98f08d9e8d416d921619
end