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

  describe "#create" do
    it "creates the todo if valid params" do

      post :create, riddle: {
        title: 'Riddle 1'
        body: 'Riddle to Riddle'
        answer: 'Hard to answer'
      }

      expect(response).to redirect_to '/'

    end
  end
end