class Team < ApplicationRecord
  has_many :bookings
  has_many :team_memberships
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
end
