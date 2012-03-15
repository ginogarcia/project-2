class UsersController < ApplicationController
  def home
    @title =  'Ruby on Rails Bookmarks App'
  end
  
   def new
       @user = User.new
       @title = 'Ruby on Rails New User'
       
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bookmark }
    end
  end


  def signup
    @title = 'Bookmarks signup page'
  end

  def contact
    @title = 'Contact Us page'
  end

  def help
    @title = 'Help'
  end

  def search
    @title = "Search Us"
  end
  
 

end
