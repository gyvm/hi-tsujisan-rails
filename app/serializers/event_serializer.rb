class EventSerializer < ActiveModel::Serializer
  attributes :url, :name, :description, :attend_table, :dates_rate

  has_many :possible_dates
  has_many :guests

  def url
    object.url.url
  end

  def attend_table
    object.get_guest_possible_dates
  end

  def dates_rate
    object.count_guests_per_date
  end
end
