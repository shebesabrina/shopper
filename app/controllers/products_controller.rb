class ProductsController < ApplicationController
  def index
    # require 'pry' ; binding.pry
    @category =  Category.find(params[:category_id])
    @products = @category.products.includes(:variants).order(:title)
  end
end
