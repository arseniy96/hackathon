class UserSerializer < ActiveModel::Serializer
  attributes :id
  has_many :tasks
  has_many :serials
end
