class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :description
      t.decimal :cost
      t.integer :freightCost
      t.integer :freightSale
      t.integer :commission
      t.integer :tax
      t.integer :quantity
      t.integer :profit

      t.timestamps
    end
  end
end
