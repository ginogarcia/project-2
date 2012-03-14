class PagesController < ApplicationController
  def home
    @title = 'Ruby on Rails Bookmarks App'
  end

  def signup
    @title = 'Bookmarks signup page'
  end

  def contact
    @title = 'Contact Us page'
  end

  def about
    @title = 'About Us Page'
  end

  def questions
    @title = 'Frequently Asked Questions & Answers'
  end

end
