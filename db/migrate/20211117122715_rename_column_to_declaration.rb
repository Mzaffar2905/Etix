class RenameColumnToDeclaration < ActiveRecord::Migration[6.0]
  def change
    rename_column :declarations, :registration_id, :car_registration_id
    
  end
end
