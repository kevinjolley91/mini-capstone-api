class OrdersController < ApplicationController
  def create
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: Product.find_by(id: params[:product_id]).price,
      tax: Product.find_by(id: params[:product_id]).tax,
      total: Product.find_by(id: params[:product_id]).total,
    )
    if @order.save
      render json: { message: "Order accepted." }
    else
      render json: { errors: @order.errors.full_messages }
    end
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    if @order
      render :show
    else
      render json: { errors: @order.errors.full_messages }
    end
  end

  def index
    @orders = current_user.orders
    if @order
      render :index
    else
      render json: { errors: @order.errors.full_messages }
    end
  end
end
