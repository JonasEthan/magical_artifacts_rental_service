class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artifact

  validates :days, presence: true, numericality: true
  validates :start_date, presence: true
  validates  :end_dtae, presence: true
end
