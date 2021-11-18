class AddUserToFines < ActiveRecord::Migration[6.0]
  def change
    add_reference :fines, :user, foreign_key: true
  end
end
