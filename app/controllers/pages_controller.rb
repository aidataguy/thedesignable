class PagesController < ApplicationController
  def home
    @posts = Post.first(5)
  end

  def thecompany
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
end
