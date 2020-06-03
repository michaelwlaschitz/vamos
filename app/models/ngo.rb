class Ngo < ApplicationRecord
  belongs_to :user
  has_many :projects
  has_many :applications, through: :projects
  has_many :reviews, through: :applications
  has_one_attached :logo

  validates :name, presence: true #uniqueness: true
  validates :description, presence: true
  validates :address, presence: true
end
