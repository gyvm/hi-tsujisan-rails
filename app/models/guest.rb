class Guest < ApplicationRecord
  validates :nickname, presence: true
  validates :event_id, presence: true

  belongs_to :event, touch: true
  has_many :guest_possible_dates
  has_many :possible_dates, through: :guest_possible_dates
end
