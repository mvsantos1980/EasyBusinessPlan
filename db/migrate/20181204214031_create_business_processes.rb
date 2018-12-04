class CreateBusinessProcesses < ActiveRecord::Migration[5.2]
  def change
    create_table :business_processes do |t|

      t.timestamps
    end
  end
end
