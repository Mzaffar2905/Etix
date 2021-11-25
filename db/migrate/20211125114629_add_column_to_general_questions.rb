class AddColumnToGeneralQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :general_questions, :answer, :text, default: "pending"
  end
end
