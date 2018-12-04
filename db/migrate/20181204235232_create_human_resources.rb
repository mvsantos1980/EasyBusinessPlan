class CreateHumanResources < ActiveRecord::Migration[5.2]
  def change
    create_table :human_resources do |t|

      t.timestamps
    end
  end
end
