class ProductsController < ApplicationController
  def index
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
      image: params[:image],
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
      image: params[:image] || @product.image,
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

  def destroy
    @product = Product.find_by(id: params["id"])
    @product.destroy
    render json: { message: "Product removed." }
  end
end
