class PossibleDate < ApplicationRecord
  validates :date, presence: true, uniqueness: { scope: :event }
  validates :event_id, presence: true

  belongs_to :event
  has_many :guest_possible_dates
  has_many :guests, through: :guest_possible_dates
end
