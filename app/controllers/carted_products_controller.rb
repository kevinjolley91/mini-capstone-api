class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: "nil",
    )
    render :show
  end

  def index
    @carted_products = current_user.carted_products
    render :index
  end
end
––––