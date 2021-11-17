class CarRegistration < ApplicationRecord
  belongs_to :user
  has_many :declarations
end
