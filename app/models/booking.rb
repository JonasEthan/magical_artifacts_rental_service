class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artifact

  validates :days, presence: true, numericality: true
end
