class ChangeImageToImageId < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :image, :image_id
  end
end
