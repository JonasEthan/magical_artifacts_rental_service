class Artifact < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  CATEGORIES = [
    "Household", "Selfdefence(non-lethal)", "Selfdefence(lethal)", "Garden", "Construction", "Adventuring", "Cursed",
    "Learning", "Comunication", "Traps", "Transportation", "Alchemie", "Music", "Other"
  ]

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :price, presence: true, numericality: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :small_description, presence: true, length: { minimum: 5 }
end
