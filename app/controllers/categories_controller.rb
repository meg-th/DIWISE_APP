class CategoriesController < ApplicationController
  def show
  	@category = Category.find(params[:category_id])
  	@category.packet = @packet
  end
end
