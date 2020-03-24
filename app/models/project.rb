class Project < ApplicationRecord
  belongs_to :ngo
  has_many :bookings
  has_many_attached :photos

  validates :title, length: { maximum: 25 }, uniqueness: true, presence: true
  validates :hours_per_week, presence: true
  validates :address, presence: true, uniqueness: true
  validates :description, presence: true
  validates :capacity, presence: true
  validates :category, presence: true
end
