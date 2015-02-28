require 'rails_helper'
require 'spec_helper'

describe 'SessionsController' do
  context "new" do
    it "is successful" do
      get :new
      expect(response).to be_success
    end
  end

  context "create" do
    let!(:user){User.create(username: "test", email: "test@test.com", password: "123")}
    it "redirects to root path if valid user" do
      post :create, :username => user.username, email: user.email, :password => user.password
      expect(response).to redirect_to root_path
    end
    it "redirects to sign in path with bad email" do
      post :create, :username => user.username, email: "1", :password => user.password
      expect(response).to redirect_to signup_new_path
    end
  end

  context "login" do
    let(:user){User.create(username: "test", email: "test@test.com", password: "123")}
    it "redirects to root path ig login is valid" do
      user
      post :login, :username => user.username, email: user.email, :password => user.password
      expect(response).to redirect_to root_path
    end
    it "redirects to login path if login is invalid" do
      post :login, :username => "hey", email: "not an email"
      expect(response).to redirect_to login_path
    end
  end
end