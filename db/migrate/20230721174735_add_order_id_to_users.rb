class AddOrderIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :order_id, :integer
  end
end
