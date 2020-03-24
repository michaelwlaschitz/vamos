class Booking < ApplicationRecord
  belongs_to :project
  belongs_to :team
  has_many :reviews

  validates :status, presence: true
  validates :hours_per_week, presence: true
end
