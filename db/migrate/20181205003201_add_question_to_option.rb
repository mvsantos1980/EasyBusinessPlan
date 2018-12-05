class AddQuestionToOption < ActiveRecord::Migration[5.2]
  def change
    add_column :options, :question_id, :integer
  end
end
