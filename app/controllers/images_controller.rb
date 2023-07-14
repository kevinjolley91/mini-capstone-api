class ImagesController < ApplicationController
  def index
    @images = Image.all
    render :index
  end

  def show
    @image = Image.find_by(id: params[:id])
    render :show
  end

  def create
    @image = Image.create(
      product_id: params[:product_id],
      url: params[:url],
    )
    if @image.save
      render :show
    else
      render json: { errors: @image.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @image = Image.find_by(id: params[:id])
    @image.update(
      product_id: params[:id] || @image.product_id,
      url: params[:url] || @image.url,
    )
    if @image.save
      render :show
    else
      render json: { errors: @image.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def delete
    @image = Image.find_by(id: params[:id])
    image.destroy
  end
end
