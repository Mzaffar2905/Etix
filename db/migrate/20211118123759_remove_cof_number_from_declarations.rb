class RemoveCofNumberFromDeclarations < ActiveRecord::Migration[6.0]
  def change
    remove_column :declarations, :cof_number
    remove_column :declarations, :policy_insurance_number
  end
end
