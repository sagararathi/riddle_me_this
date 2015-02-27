1require 'spec_helper'

describe RiddlesController do
  let(:riddle) { FactoryGirl.create :riddle }

  describe "#index" do
    it "assigns the riddles to Riddles.all" do
      get :index
      expect(response).to be_success
    end
  end

  describe "#new" do
    it "assigns the riddle to Riddle.new " do
      get :new
      expect(assigns(:riddle)).to be_a_new(Riddle)
    end
  end


end