class PossibleDate < ApplicationRecord
  belongs_to :event
  has_many :guest_possible_dates
  has_many :guests, through: :guest_possible_dates
end
