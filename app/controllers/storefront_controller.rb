class StorefrontController < ApplicationController
  def all_items
    @products = Product.all
  end
end
