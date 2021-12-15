class EventSerializer < ActiveModel::Serializer
  attributes :url, :name, :description

  has_many :possible_dates
  has_many :guests

  def url
    object.url.url
  end
end
