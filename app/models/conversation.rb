class Conversation < ApplicationRecord
  belongs_to :ngo
  belongs_to :team

  has_many :messages, dependent: :destroy
  validates :ngo_id, uniqueness: { scope: :team_id }
end
