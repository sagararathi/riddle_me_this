require 'rails_helper'

describe 'SessionsController' do
  context "new" do
    it "is successful" do
      get :new
      expect(response).to be_success
    end
  end

  context "create" do
    let(:user){User.create(username: :test, email: "test@email.com", password: "123")}
      it "" do

      end
  end
end