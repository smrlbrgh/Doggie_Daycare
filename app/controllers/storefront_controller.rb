class StorefrontController < ApplicationController
  def all_items
    # TODO: Add logic to handle when cat id returns nil(do in controller)
    # Essentially, return all products and categories with notice.
    if params[:cat_id]
      @category = Category.find(params[:cat_id])
      @products = Product.where(category_id: params[:cat_id])
    else
      @products = Product.all
    end
  end
end
