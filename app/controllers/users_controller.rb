class UsersController < ApplicationController
  
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user }
     end
  end
   
  
  #GET /users/home
  def home
    @user  = User.new
    @title =  'Ruby on Rails Bookmarks App'
  end
  
  # GET /users/1
  # GET /users/1.json
  
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json  {render :json => @user }
    end
  end
    
  
   
  #GET /users/new
  #GET /users/new.json
  def new
    @user = User.new
    @title = 'Ruby on Rails New User'
       
    respond_to do |format|
      format.json # new.html.erb
      format.json  { render :json => @bookmark }
    end
  end


    
  
  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end
  
  # POST /bookmarks
  # POST /bookmarks.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, :notice => 'Account was successfully created.') }
        format.json  { render :json => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.json  { render :json => @user.errors, :status => :unprocessable_entity }
      end
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
