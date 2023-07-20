class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    pp current_user
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      images: params[:images],
      description: params[:description],
      quantity: params[:quantity],
      supplier_id: params[:supplier_id],
    )
    if @product.save
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.update(
      name: params[:name] || @product.name,
      price: params[:price] || @product.price,
      images: params[:images] || @product.images,
      description: params[:description] || @product.description,
      quantity: params[:quantity] || @product.quantity,
      supplier_id: params[:supplier_id] || @product.supplier_id,
    )
    if @product.save
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def delete
    @product = Product.find_by(id: params["id"])
    @product.destroy
    render json: { message: "Product removed." }
  end
end
