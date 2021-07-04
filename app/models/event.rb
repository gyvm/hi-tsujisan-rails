class Event < ApplicationRecord
  has_one :url
  has_many :guests
  has_many :possible_dates

  def count_guests_per_date
    ActiveRecord::Base.connection.execute('SELECT possible_dates.id, COUNT(*) FROM possible_dates INNER JOIN guest_possible_dates ON possible_dates.id =guest_possible_dates.possible_date_id WHERE event_id=62 AND status=1 GROUP BY possible_dates.id;').to_h
  end
end
