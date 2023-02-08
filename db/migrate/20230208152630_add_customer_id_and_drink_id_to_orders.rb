class AddCustomerIdAndDrinkIdToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :customer_id, :integer
    add_column :orders, :drink_id, :integer
    remove_column :orders, :customer_name
  end
end
