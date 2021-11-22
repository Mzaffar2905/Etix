class AddQuestionApprovedToGeneralQuestion < ActiveRecord::Migration[6.0]
  def change
    add_column :general_questions, :question_approved, :string, default: "pending"
  end
end
