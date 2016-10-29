class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :date, :complete
  belongs_to :user
end
