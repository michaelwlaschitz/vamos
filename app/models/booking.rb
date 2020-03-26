class Booking < ApplicationRecord
  belongs_to :project
  belongs_to :team
  has_many :reviews

  validates :status, presence: true
end
