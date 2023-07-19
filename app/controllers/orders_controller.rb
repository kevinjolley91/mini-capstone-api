class OrdersController < ApplicationController
  def create
    @order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:quantity],
      tax: params[:tax],
      total: params[:total],
    )
    if @order.save
      render json: { message: "Order accepted." }
    else
      render json: { message: "Order declined." }
    end
  end
end
