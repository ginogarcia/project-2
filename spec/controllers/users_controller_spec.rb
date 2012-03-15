require 'spec_helper'

describe UsersController do
  
  def valid_attributes
    {}
  end
  render_views

    describe "GET index" do
    it "assigns all users as @users" do
      user = User.create! valid_attributes
      get :index
      assigns(:users).should eq([user])
    end
  end
  
  describe "GET 'edit'" do
    it "should be successful" do
      get 'edit'
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
