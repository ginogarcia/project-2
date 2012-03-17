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
  #attr_accessible  :username, :realname, :email, :password

  #validates :username, presence => true
  #validates :realname, presence => true
  #validates :email, presence => true
  #validates :password, presence => true

  
    

end
