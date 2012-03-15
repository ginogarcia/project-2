class UsersSessionsController < ApplicationController
   
   def new
    @user = User.new

    respond_to do |format|
      format.html # login.html.erb
      format.xml  { render :xml => @user }
    end
  end
end
