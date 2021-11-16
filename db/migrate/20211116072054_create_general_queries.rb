class CreateGeneralQueries < ActiveRecord::Migration[6.0]
  def change
    create_table :general_queries do |t|
      t.string :issue
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
