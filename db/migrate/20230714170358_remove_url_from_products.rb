class RemoveUrlFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :url, :text
  end
end
