class Product < ApplicationRecord
  validates :name, :price, :description, :quantity, :supplier_id, presence: true
  belongs_to :supplier
  # has_many :images
  has_many :carted_products
  has_many :orders, through: :category_products
  # has_many :category_products
  has_many :categories, through: :category_products

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def is_discounted?
    result = false
    result = true if price <= 300
    result
  end

  def tax
    tax = price * 0.09
    tax.round(2)
  end

  def total
    total = price + tax
    total
  end
end
