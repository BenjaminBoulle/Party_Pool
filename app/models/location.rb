class Location < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  has_many :reviews, dependent: :destroy

  has_many_attached :photos

  validates :address, uniqueness: true
  validates :title, :address, :category, presence: true
  validate :max_2_photos
  after_validation :geocode, if: :will_save_change_to_address?

  def max_2_photos
    errors.add(:photos, "maximum 2 pictures allowed") if photos.count > 2
  end
end
