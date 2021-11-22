class ChangeDeclarationApprovedToDeclaration < ActiveRecord::Migration[6.0]
  def change
    change_column :declarations, :declaration_approved, :string, default: "pending"
  end
end
