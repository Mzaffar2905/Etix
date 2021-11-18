class AddRegistrationNumberToFines < ActiveRecord::Migration[6.0]
  def change
    add_column :fines, :registration_number, :integer
  end
end
