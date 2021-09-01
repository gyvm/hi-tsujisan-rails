class GuestPossibleDate < ApplicationRecord
  belongs_to :guest
  belongs_to :possible_date
end
