class Watch < ApplicationRecord
  has_many :watch_lists
  has_one :order
  belongs_to :vendor
  belongs_to :maker
  belongs_to :model
end
