class RiddlesController < ApplicationController

  def index
    @riddle = Riddle.all
  end

end