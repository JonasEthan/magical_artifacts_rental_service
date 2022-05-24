class Artifact < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :price, presence: true, numericality: true
  validates :category, presence: true
  validates :small_description, presence: true, length: { minimum: 5 }
end
