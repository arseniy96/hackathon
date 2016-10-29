class SpoilerSerializer < ActiveModel::Serializer
  attributes :id, :text, :is_sended
  belongs_to :serial
end
