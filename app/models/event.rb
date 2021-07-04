class Event < ApplicationRecord
  has_one :url
  has_many :guests
  has_many :possible_dates
end
