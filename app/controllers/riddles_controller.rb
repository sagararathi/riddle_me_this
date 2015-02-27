class RiddlesController < ApplicationController
  
  def show
  	@riddle = Riddle.find_by_id(params[:id])
  end

end