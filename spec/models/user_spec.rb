# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  username   :string(255)
#  realname   :string(255)
#  email      :string(255)
#  password   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe User do
  before(:each)do
    @attr = {:username => "ggarcia",
             :realname => "Gino Garcia",
             :email => "user@example.com",
             :password => "X2020x20",
             :password_confirmation => "X2020x20"}
   end
    
  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end

    
    
   it "should require a username" do
       no_username_user = User.new(@attr.merge(:username =>""))
       no_username_user.should_not be_valid
   end
   
      it "should reject usernames that are too long" do
        long_name = "a" * 101
        long_username_user = User.new(@attr.merge(:username => long_name))
        long_username_user.should_not be_valid
    end    

    
    it "should require a realname" do
        no_realname_user = User.new(@attr.merge(:realname => ""))
        no_realname_user.should_not be_valid
    end
    
    it "should reject realnames that are too long" do
        long_name = "a" * 76
        long_realname_user = User.new(@attr.merge(:realname => long_name))
        long_realname_user.should_not be_valid
    end 
    it "should require an email" do
      no_email_user = User.new(@attr.merge(:email =>""))
      no_email_user.should_not be_valid
    end
       
    it "should accept valid email addresses" do
      addresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
      addresses.each do |address|
        valid_email_user = User.new(@attr.merge(:email => address))
        valid_email_user.should be_valid
      end
    end

  it "should reject invalid email addresses" do
    addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
    addresses.each do |address|
      invalid_email_user = User.new(@attr.merge(:email => address))
      invalid_email_user.should_not be_valid
    end
  end  
       
       
  
       
  describe "password validations" do

    it "should require a password" do
      User.new(@attr.merge(:password => "", :password_confirmation => "")).
        should_not be_valid
    end

    it "should require a matching password confirmation" do
      User.new(@attr.merge(:password_confirmation => "invalid"))
        should_not be_valid
    end

    it "should reject short passwords" do
      short = "a" * 6
      hash = @attr.merge(:password => short, :password_confirmation => short)
      User.new(hash).should_not be_valid
    end

    it "should reject long passwords" do
      long = "a" * 41
      hash = @attr.merge(:password => long, :password_confirmation => long)
      User.new(hash).should_not be_valid
    end
  end
    
   
   
end
