class CreatePricings < ActiveRecord::Migration[5.2]
  def change
    create_table :pricings do |t|

      t.timestamps
    end
  end
end
