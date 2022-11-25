class Location < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  has_many :reviews, dependent: :destroy

  has_many_attached :photos

  validates :address, uniqueness: true
  validates :title, :address, :category, presence: true
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_title_address_category,
    against: %i[ title address category],
    using: {
      tsearch: { prefix: true }
    }
end
