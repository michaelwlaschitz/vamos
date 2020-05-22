class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :set_default_avatar
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :invitable, invite_for: 0
        # devise invitable comes from new gem and allows as to invite users.
  has_many :reviews
  has_one :ngo
  has_many :ngo_reviews, through: :ngo, source: :reviews
  has_many :team_memberships
  has_many :teams, through: :team_memberships
  has_many :bookings, through: :teams
  has_many :ngo_bookings, through: :ngo, source: :bookings

  has_many :ngo_conversations, through: :ngo_bookings, source: :conversation
  has_many :team_conversations, through: :bookings, source: :conversation

  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }, presence: true, uniqueness: true

  def ngo_manager?
    ngo.present?
  end

  require 'open-uri'

  def set_default_avatar
    if self.photo.attached? == false
      self.photo.attach(io: File.open("app/assets/images/missing_avatar.png"), filename: 'missing_avatar.png', content_type: 'image/png')
    end
  end
end
