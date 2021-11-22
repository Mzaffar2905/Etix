class AddColumnToRegistrations < ActiveRecord::Migration[6.0]
  def change
   add_column :car_registrations, :registration_approved, :boolean, default: false
  end
end
