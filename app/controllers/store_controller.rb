class StoreController < ApplicationController
  def index
    @products = Product.order(:price)
    @cart = current_cart
  end
end
