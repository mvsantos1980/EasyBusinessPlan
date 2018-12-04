class CreateCompetitivenesses < ActiveRecord::Migration[5.2]
  def change
    create_table :competitivenesses do |t|

      t.timestamps
    end
  end
end
