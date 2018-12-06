class AddPaymentToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :payment_id, :integer
  end
end
