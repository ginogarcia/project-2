require 'spec_helper'

describe User do
 

    before(:each)do
       @attr = {:url => "http://gino-project2.heroku.com", :name => "Gino Garcia"}
    end

    #it "should create a new instance given a valid attribute" do
    #    User.create!(@attr)
    #end
    #
    #it "should require a username" do
    #    no_username_user = User.new(@attr.merge(:username =>""))
    #    no_username_user.should_not be_valid
    #end
    #
    #it "should require a realname" do
    #    no_realname_user = User.new(@attr.merge(:realname => ""))
    #    no_realname_user.should_not be_valid
    #end
    #   it "should require an email" do
    #    no_email_user = User.new(@attr.merge(:email =>""))
    #    no_email_user.should_not be_valid
    #end
    #
    #it "should require a password" do
    #    no_password_user = User.new(@attr.merge(:password => ""))
    #    no_password_user.should_not be_valid
    #end
    #
    #
    #it "should reject usernames that are too long" do
    #    long_name = "a" * 101
    #    long_username_user = User.new(@attr.merge(:username => long_name))
    #    long_username_user.should_not be_valid
    #end

   
end