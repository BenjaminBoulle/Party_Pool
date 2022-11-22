class Review < ApplicationRecord
  belongs_to :location

  validates :comment, :rating, presence: true
end
