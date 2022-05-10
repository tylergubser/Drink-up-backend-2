class AddMadeToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :made, :boolean
  end
end
