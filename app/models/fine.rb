class Fine < ApplicationRecord
  belongs_to :user
  validates :fineticket, presence: true
  validates :registration_number, presence: true
end
