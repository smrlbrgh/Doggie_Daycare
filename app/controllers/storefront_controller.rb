class StorefrontController < ApplicationController
  def all_items
    # TODO: Add logic to handle when cat id returns nil(do in controller)
    if params[:cat_id]
      @category = Category.find(params[:cat_id])
      @products = Product.where(category_id: params[:cat_id])
    else
      @products = Product.all
    end
  end
end
