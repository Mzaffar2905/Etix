class AddColumnToFines < ActiveRecord::Migration[6.0]
  def change
    add_column :fines, :request_number, :integer
  end
end
