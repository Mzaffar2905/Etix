class AddcofnumberToDeclarations < ActiveRecord::Migration[6.0]
  def change
    add_column :declarations, :cof_number, :string
    add_column :declarations, :policy_insurance_number, :string
  end
end
