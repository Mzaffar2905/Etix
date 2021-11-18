class Declaration < ApplicationRecord
  belongs_to :car_registration
  validates :cof_number, :policy_insurance_number, presence: true
end
