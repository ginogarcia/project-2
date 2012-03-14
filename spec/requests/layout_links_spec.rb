require 'spec_helper'

describe "LayoutLinks" do
  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Ruby on Rails Bookmarks App")
  end
  
  it "should have a Contat page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end
  
    it "should have a About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end
 
   it "should have a Questions page at '/questions'" do
    get '/questions'
    response.should have_selector('title', :content => "Frequently Asked Questions & Answers")
  end
 
   it "should have a Signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Bookmarks signup page")
  end
 
 
end
