class Team < ApplicationRecord
  has_many :bookings
  has_many :team_memberships
  has_many :users, through: :team_memberships
  has_one_attached :photo
  attr_accessor :selected_project
  accepts_nested_attributes_for :team_memberships, reject_if: :all_blank, allow_destroy: true
  validates :name, presence: true, uniqueness: true

  def users_except(user)
    users.where.not(id: user.id)
  end

end
