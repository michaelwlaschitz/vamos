class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable


  after_create :set_default_avatar
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :invitable, invite_for: 0
        # devise invitable comes from new gem and allows as to invite users.

  # Devise omniauthable makes user facebook omiauthable
  devise :omniauthable, omniauth_providers: [:facebook]

  has_many :reviews
  has_one :ngo
  has_many :ngo_reviews, through: :ngo, source: :reviews
  has_many :team_memberships
  has_many :teams, through: :team_memberships
  has_many :applications, through: :teams
  has_many :ngo_applications, through: :ngo, source: :applications

  has_many :ngo_conversations, through: :ngo_applications, source: :conversation
  has_many :team_conversations, through: :applications, source: :conversation

  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }, presence: true, uniqueness: true

  attr_accessor :current_password

  def ngo_manager?
    ngo.present?
  end

  require 'open-uri'

  def set_default_avatar
    if self.photo.attached? == false
      self.photo.attach(io: File.open("app/assets/images/missing_avatar.png"), filename: 'missing_avatar.png', content_type: 'image/png')
    end
  end

  def self.find_for_facebook_oauth(auth)
    user_params = auth.slice("provider", "uid")
    user_params.merge! auth.info.slice("email", "first_name", "last_name")
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
    user_params = user_params.to_h

    user = User.find_by(provider: auth.provider, uid: auth.uid)
    user ||= User.find_by(email: auth.info.email) # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    return user
  end

end
