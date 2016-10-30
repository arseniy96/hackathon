class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :date, :complete, :spoiler
  belongs_to :user
end
