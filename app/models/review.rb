class Review < ApplicationRecord
  belongs_to :location
  RATING = ['1', '2', '3', '4', '5']

  validates :comment, :rating, presence: true
end
