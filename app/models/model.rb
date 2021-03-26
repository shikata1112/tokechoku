class Model < ApplicationRecord
  belongs_to :maker
  has_many :watches, dependent: :destroy
end
