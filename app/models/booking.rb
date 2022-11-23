class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :location
  CATEGORY = ['kids party', 'student party', 'wedding', 'ball', 'birthday']

  validates :start_date, :end_date, presence: true
end
