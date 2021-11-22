class AddFineApprovedToFine < ActiveRecord::Migration[6.0]
  def change
    add_column :fines, :fine_approved, :string, default: "pending"
  end
end
