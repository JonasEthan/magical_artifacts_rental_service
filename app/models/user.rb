class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :artifacts, dependent: :destroy
  has_many :artifacts, through: :bookings
end
