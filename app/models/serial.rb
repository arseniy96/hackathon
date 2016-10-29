class Serial < ActiveRecord::Base
  belongs_to :user
  has_many :spoilers
end
