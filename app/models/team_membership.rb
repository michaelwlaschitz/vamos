class TeamMembership < ApplicationRecord
  belongs_to :user
  belongs_to :team

  def invite_new_user
    UserMailer.with(user: user).invite
  end
end
