class CreateContextualizations < ActiveRecord::Migration[5.2]
  def change
    create_table :contextualizations do |t|

      t.timestamps
    end
  end
end
