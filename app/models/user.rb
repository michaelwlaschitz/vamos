class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews
  has_one :ngo
  has_many :team_memberships
  has_many :teams, through: :team_memberships
  has_many :bookings, through: :teams
  has_many :ngo_bookings, through: :ngo, source: :bookings
  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, format: { with: /\A.*@.*\.com\z/ }, presence: true, uniqueness: true
  validates :password, presence: true
  validates :description, presence: true
  validates :phone, presence: true, uniqueness: true
end
