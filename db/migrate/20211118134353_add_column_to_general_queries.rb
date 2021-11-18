class AddColumnToGeneralQueries < ActiveRecord::Migration[6.0]
  def change
    add_column :general_queries, :request_number, :integer
  end
end
