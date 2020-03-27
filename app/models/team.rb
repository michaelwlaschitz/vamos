class Team < ApplicationRecord
  has_many :bookings
  has_many :team_memberships
  has_one_attached :photo
  attr_accessor :selected_project

  validates :name, presence: true, uniqueness: true
end
