class PagesController < ApplicationController
  def home
    @posts = Post.last(5)
    @galleries = Gallery.last(6)
  end

  def thecompany
    @user = User.find(1)
  end

  def ourwork
    
  end

  def plansandpricing
  end

  def tour
  end

  def tutorialsandvideos
  end

  def contact
  end

  def faq
  end

  def tandc
  end

  def author
  end

end
