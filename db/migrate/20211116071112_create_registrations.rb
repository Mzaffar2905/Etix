class CreateRegistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :registrations do |t|
      t.string :car_make
      t.string :car_model
      t.string :chassis_number
      t.string :engine_number
      t.string :engine_capacity
      t.references :user, null: false, foreign_key: true
      t.string :numeric_plate
      t.boolean :payment_done

      t.timestamps
    end
  end
end
