class EventCreateSerializer < ActiveModel::Serializer
  attributes :url, :name, :description

  def url
    object.url.url
  end
end
