class ShopsController < ApplicationController
  def index
 #   @search = Product.search do
  #    fulltext params[:search]
   # end
    @products = Product.all
    @order_item = current_order.order_items.new
    #@products = @search.results
  end

  def show
    @product = Product.find(params[:id])
  end
  

end
