class Conversation < ApplicationRecord
  belongs_to :booking
  has_one :project, through: :booking
  has_one :ngo, through: :project
  has_one :team, through: :booking

  has_many :messages, dependent: :destroy
end
