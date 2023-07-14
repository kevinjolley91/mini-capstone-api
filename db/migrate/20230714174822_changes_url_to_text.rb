class ChangesUrlToText < ActiveRecord::Migration[7.0]
  def change
    change_column :images, :url, :text
  end
end
