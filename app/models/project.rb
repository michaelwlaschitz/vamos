class Project < ApplicationRecord
  belongs_to :ngo
  has_many :applications
  has_many :reviews, through: :applications
  has_many_attached :photos

  validates :title, length: { maximum: 40 }, presence: true
  validates :start_date, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :capacity, presence: true
  validates :category, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
