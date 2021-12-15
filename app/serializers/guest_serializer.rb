class GuestSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :comment
end
