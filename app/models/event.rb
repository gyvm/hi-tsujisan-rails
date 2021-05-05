class Event < ApplicationRecord
  has_one :url
  has_many :guests
end
