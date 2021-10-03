class GuestPossibleDate < ApplicationRecord
  validates :status, presence: true
  validates :guest_id, presence: true
  validates :possible_date_id, presence: true

  belongs_to :guest
  belongs_to :possible_date
end
