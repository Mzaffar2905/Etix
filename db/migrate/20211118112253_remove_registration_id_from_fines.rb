class RemoveRegistrationIdFromFines < ActiveRecord::Migration[6.0]
  def change
    remove_reference :fines, :declaration, foreign_key: true
  end
end
