class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :tasks
  has_many :serials
end
