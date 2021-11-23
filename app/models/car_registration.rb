class CarRegistration < ApplicationRecord
  belongs_to :user
  has_many :declarations
  validates :car_make, presence: true
  validates :car_model, presence: true
  validates :chassis_number, presence: true
  validates :engine_number, presence: true
  validates :engine_capacity, presence: true
  validates :numeric_plate, presence: true
end
