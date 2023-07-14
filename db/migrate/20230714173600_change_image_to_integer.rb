class ChangeImageToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :image, "integer USING CAST(image As integer)"
  end
end
