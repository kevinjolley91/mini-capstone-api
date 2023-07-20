class OrdersController < ApplicationController
  before_action :authenticate_user

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
    if current_user
      @order = current_user.orders.find_by(id: params[:id])
      render :show
    else
      render json: { message: "Please log in to see your order." }, status: :unauthorized
    end
  end

  def index
    if current_user
      @orders = current_user.orders.all
      render :index
    else
      render json: { message: "Please log in to see your orders." }, status: :unauthorized
    end
  end
end
