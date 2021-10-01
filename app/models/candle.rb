class Candle < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :reviews
  has_many_attached :photos
end
