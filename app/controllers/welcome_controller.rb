class WelcomeController < ApplicationController
  def index
  end


  def academics
    @products = Product.all
  end
  def competetive
    @products = Product.all
  end
  def school
    @products = Product.all
  end
  def general
    @products = Product.all
  end
end
