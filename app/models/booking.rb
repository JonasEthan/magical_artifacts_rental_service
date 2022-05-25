class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artifact

  validates :days, numericality: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
