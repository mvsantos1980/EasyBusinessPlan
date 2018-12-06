class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :descrition
      t.integer :installment
      t.boolean :firstPayNow

      t.timestamps
    end
  end
end
