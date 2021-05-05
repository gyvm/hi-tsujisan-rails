class Guest < ApplicationRecord
  belongs_to :event, touch: true
end
