class RemoveDeclarationApprovedFromDeclarations < ActiveRecord::Migration[6.0]
  def change
    remove_column :declarations, :declaration_approved
  end
end
