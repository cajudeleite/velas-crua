class Candle < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :reviews
  has_one_attached :photo
end
