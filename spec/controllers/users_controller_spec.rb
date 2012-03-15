require 'spec_helper'

describe UsersController do
  render_views

  
  
  describe "GET 'edit'" do
    it "should be successful" do
      get 'edit'
      response.should be_success
    end
  end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
  
    it "assigns the requested bookmark as @user" do
      user = User.create! valid_attributes
      get :show, :id => user.id.to_s
      assigns(:user).should eq(user)
    end
  end

end
