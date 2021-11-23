class GeneralQuestion < ApplicationRecord
  belongs_to :user
  #validates :issue, presence: true
end
