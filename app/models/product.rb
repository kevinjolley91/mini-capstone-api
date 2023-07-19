class Product < ApplicationRecord
  validates :name, :price, :description, :quantity, presence: true
  # :image_url,
  belongs_to :supplier
  has_many :images, :orders

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
