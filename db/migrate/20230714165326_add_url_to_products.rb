class AddUrlToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :url, :text
  end
end
