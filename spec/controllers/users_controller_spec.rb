require 'spec_helper'

describe UsersController do
  render_views



  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
        response.should have_selector("title", :content => "#{@title}")
    end
  end
  
  describe "GET 'signup'" do
    it "should be successful" do
      get 'signup'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'signup'
        response.should have_selector("title", :content => "#{@base_title}")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'contact'
        response.should have_selector("title", :content => "#{@base_title}")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'about'
        response.should have_selector("title", :content => "#{@base_title}")
    end
  end

  describe "GET 'questions'" do
    it "should be successful" do
      get 'questions'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'questions'
        response.should have_selector("title", :content => "#{@base_title}")
    end
  end

end
