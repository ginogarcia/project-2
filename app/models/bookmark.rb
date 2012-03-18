# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer         not null, primary key
#  url        :string(255)
#  name       :string(255)
#  date_saved :date
#  created_at :datetime
#  updated_at :datetime
#

class Bookmark < ActiveRecord::Base
     attr_accessible :url, :name
    
    validates :url, :presence => true,
                     :length => {:minimum => 10}
    
    validates :name, :presence => true,
                     :length => {:maximum => 100}
    
end
