class Url < ApplicationRecord
  validates :url, presence: true, uniqueness: true
  validates :event_id, presence: true

  belongs_to :event
end
