class AddColumnToDeclarations < ActiveRecord::Migration[6.0]
  def change
    add_column :declarations, :request_number, :integer
  end
end
