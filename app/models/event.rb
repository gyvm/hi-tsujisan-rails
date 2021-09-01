class Event < ApplicationRecord
  has_one :url
  has_many :guests
  has_many :possible_dates

  def count_guests_per_date(event_id)
    # ActiveRecord::Base.connection.execute('SELECT possible_dates.id, COUNT(*) FROM possible_dates INNER JOIN guest_possible_dates ON possible_dates.id =guest_possible_dates.possible_date_id WHERE event_id=62 AND status=1 GROUP BY possible_dates.id;').to_h
    ActiveRecord::Base.connection.raw_connection.prepare('SELECT possible_dates.id, COUNT(*) FROM possible_dates INNER JOIN guest_possible_dates ON possible_dates.id =guest_possible_dates.possible_date_id WHERE event_id=? AND status=1 GROUP BY possible_dates.id;').execute(event_id).to_h
  end

  def get_guest_possible_dates(event_id)
    # guest_possible_dates = ActiveRecord::Base.connection.execute('SELECT guests.id, possible_date_id, status FROM guests INNER JOIN guest_possible_dates ON guests.id =guest_possible_dates.guest_id WHERE event_id=62;').to_a
    guest_possible_dates = ActiveRecord::Base.connection.raw_connection.prepare('SELECT guests.id, possible_date_id, status FROM guests INNER JOIN guest_possible_dates ON guests.id =guest_possible_dates.guest_id WHERE event_id=?;').execute(event_id).to_a
    guest_possible_dates.map do |data|
      { guest_id: data[0], date: data[1], status: data[2] }
    end
  end
end
