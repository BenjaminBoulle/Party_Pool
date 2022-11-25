class Location < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  has_many :reviews, dependent: :destroy

  has_many_attached :photos

  validates :address, uniqueness: true
  validates :title, :address, :category, presence: true
  validate :max_2_photos, :min_1_photo
  validates :description, presence: true, length: { minimum: 200 }
  after_validation :geocode, if: :will_save_change_to_address?

  def max_2_photos
    errors.add(:photos, "maximum 2 pictures allowed") if photos.count > 2
  end

  def min_1_photo
    errors.add(:photos, "minimum 1 picture needed") if photos.count < 1
  end

  include PgSearch::Model
  pg_search_scope :search_by_title_address_category,
                  against: %i[title address category],
                  using: { tsearch: { prefix: true } }
end
