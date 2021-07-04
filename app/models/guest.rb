class Guest < ApplicationRecord
  belongs_to :event, touch: true
  has_many :guest_possible_dates
  has_many :possible_dates, through: :guest_possible_dates
end
