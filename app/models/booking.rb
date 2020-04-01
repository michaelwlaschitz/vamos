class Booking < ApplicationRecord
  belongs_to :project
  belongs_to :team
  has_many :reviews
  has_one :conversation

  validates :status, presence: true
end
