class Location < ApplicationRecord
  belongs_to :user

  validates :address, uniqueness: true
  validates :title, :address, :category, presence: true
end
