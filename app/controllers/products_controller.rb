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
      name: "PSU",
      price: 200,
      image_url: "https://c1.neweggimages.com/ProductImage/17-151-196-S09.jpg",
      description: "Fully modular power supply outputting up to 850 watts with 80+ Titanium efficiency.",
    )
    render :show
  end
end
