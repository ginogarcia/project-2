require 'spec_helper'

describe PagesController do
render_views
 before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end


 describe "GET 'search'" do
    it "should be successful" do
      get 'search'
      response.should be_success
    end

    it "should have the right title" do
      get 'search' 
      response.should have_selector("title",:content => "Search to the Bookmarks project")
    end
  end



end
