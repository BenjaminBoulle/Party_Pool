class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :location

  validates :start_date, :end_date, uniqueness: true
  validates :start_date, :end_date, presence: true
end
