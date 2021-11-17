class ChangeRegistrationsToCarRegistrations < ActiveRecord::Migration[6.0]
  def change
    rename_table :registrations, :car_registrations
  end
end
