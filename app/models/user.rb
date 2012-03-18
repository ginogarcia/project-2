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

 
class User < ActiveRecord::Base
  attr_accessible  :username, :realname, :email, :password
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 
    validates :username, :presence => true,
                     :uniqueness => true,
                     :length => {:maximum => 100}
    
    validates :realname, :presence => true,
                     :length => {:minimum => 2},
                     :length => {:maximum => 75}
                         
   validates :email, :presence => true,
                    :format   => { :with => email_regex }
                    
    validates :password, :presence => true,
                     :length => {:minimum => 7},
                     :length => {:maximum => 40}
    
    
    

end
