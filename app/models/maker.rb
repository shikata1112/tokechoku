class Maker < ApplicationRecord
  has_many :watches, dependent: :destroy
  has_many :models, dependent: :destroy
end
