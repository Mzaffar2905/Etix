class Declaration < ApplicationRecord
  belongs_to :car_registration
  delegate :user, :to => :car_registration
  validates :cof_number, presence: true
  validates :policy_insurance_number, presence: true
end
