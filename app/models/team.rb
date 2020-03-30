class Team < ApplicationRecord
  has_many :bookings
  has_many :team_memberships
  has_one_attached :photo
  has_many :users, through: :team_memberships
  attr_accessor :selected_project

  validates :name, presence: true, uniqueness: true
end
