class PagesController < ApplicationController
  
     
  
  def home
    @title = "Welcome to the Bookmarks project"
    
    @user = User.new

    respond_to do |format|
      format.html # login.html.erb
      format.xml  { render :xml => @user }
    end
  end

end
