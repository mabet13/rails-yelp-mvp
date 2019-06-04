class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates_associated :restaurant
  #validates :rating, presence: true #, inclusion: { in: [0..5] }
  validates :rating, numericality: { only_integer: true, greater_than: -1, less_than: 6 }
end
