class Project < ApplicationRecord
  belongs_to :ngo
  has_many :applications
  has_many :reviews, through: :applications
  has_many_attached :photos
  validates :photos, presence: true
  validates :title, length: { maximum: 40 }, presence: true
  validates :start_date, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :capacity, presence: true
  validates :category, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def spots_left
    spots_taken = 0

    self.applications.each do |application|
      if application.status == "accepted"
        team = Team.find(application.team_id)
        total_members = team.team_memberships.count
        spots_taken += total_members
      end
    end

    return self.capacity - spots_taken
  end

end
