class StoreController < ApplicationController
  skip_before_filter :authorize
  
  def index
    @products = Product.order(:price)
    @cart = current_cart
  end
end
