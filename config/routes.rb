Rails.application.routes.draw do
  get "/all_products" => "products#all_products"
  get "/product/:id" => "products#one_product"
  # get "/first_product", controller: "products", action: "first_product"
  # get "/second_product", controller: "products", action: "second_product"
  # get "/third_product", controller: "products", action: "third_product"
end
