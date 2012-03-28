require 'spec_helper'

describe "LayoutLinks" do
  #
   it "should have a Login page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Login to the Bookmarks project")
  end
  
  it "should have a New page at '/new'" do
    get '/new'
    response.should have_selector('title', :content => "Ruby on Rails Bookmarks App")
  end
  
   
  
  

   it "should have a Search page at '/search'" do
    get '/search'
    response.should have_selector('title', :content => "Search to the Bookmarks project")
  end
  
   it "should have a Signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Bookmarks signup page")
  end
  
 
end
