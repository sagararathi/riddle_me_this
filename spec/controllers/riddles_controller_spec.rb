require 'rails_helper'

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
    it "creates the riddle if valid params" do

      post :create, riddle: {
        title: 'Riddle 1',
        body: 'Riddle to Riddle',
        answer: 'Hard to answer',
        user_id: 1
      }

      expect(response).to redirect_to 'show'
    end
  end

  describe "#edit" do
    it "assigns the riddle to the riddle" do
      get :edit, id: riddle.id
      expect(assigns(:riddle)).to eq(riddle)
    end
  end

  describe "#update" do
    it "updates the riddle if valid params" do
      put :update, id: riddle.id,
        riddle: {
        title: 'Riddle 2',
        body: 'Riddle"s to Riddle',
        answer: 'Hard to answer',
        user_id: 1
      }

      expect(response).to be_redirect
    end


  end
end