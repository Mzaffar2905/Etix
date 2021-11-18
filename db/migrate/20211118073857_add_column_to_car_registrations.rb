class AddColumnToCarRegistrations < ActiveRecord::Migration[6.0]
  def change
    add_column :car_registrations, :request_number, :integer
  end
end
