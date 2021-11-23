class CarRegistration < ApplicationRecord
  belongs_to :user
  has_many :declarations
  #validates :car_make, :car_model, :chassis_number, :engine_number, :engine_capacity, :numeric_plate, presence: true
end
