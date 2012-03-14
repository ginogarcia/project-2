module ApplicationHelper

  #Return a title on a per-page basis.
  def title
  base_title = 'Ruby on Rails Bookmarks App'
  if @title.nil?
    base_title
  else
    "#{@title}"
    end
  end
  
  def logo
    image_tag("book_logo.jpg", :alt=> "Bookmarks Project", :class => "round", :id =>"logo")
  end
end