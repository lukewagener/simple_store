class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def action
  end

  def view
  end
end
