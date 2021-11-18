class RenameGeneralQueries < ActiveRecord::Migration[6.0]
  def change
    rename_table :general_queries, :general_questions
  end
end
