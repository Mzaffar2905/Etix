class AddDeclarationApprovedToRegistrations < ActiveRecord::Migration[6.0]
  def change
    add_column :declarations, :declaration_approved, :boolean, default: false
  end
end
