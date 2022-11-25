class Review < ApplicationRecord
  belongs_to :location
  belongs_to :user

  RATING = ['1', '2', '3', '4', '5']

  validates :comment, :rating, presence: true
end
