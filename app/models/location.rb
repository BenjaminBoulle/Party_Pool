class Location < ApplicationRecord
  belongs_to :user
  geocoded_by :address

  has_one_attached :photo

  validates :address, uniqueness: true
  validates :title, :address, :category, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
end
