class Fine < ApplicationRecord
  belongs_to :user
  #validates :fineticket, :registration_number, presence: true
end
