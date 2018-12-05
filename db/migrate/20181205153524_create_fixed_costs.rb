class CreateFixedCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :fixed_costs do |t|
      t.decimal :water
      t.decimal :light
      t.decimal :telephone
      t.decimal :counter
      t.decimal :vehicle
      t.decimal :officeSupplies
      t.decimal :rental
      t.decimal :maintenance
      t.decimal :taxes
      t.decimal :other

      t.timestamps
    end
  end
end
