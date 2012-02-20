class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end

  def aboutus
    @title = "About Us"
  end

end
