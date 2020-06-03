class Conversation < ApplicationRecord
  belongs_to :application
  has_one :project, through: :application
  has_one :ngo, through: :project
  has_one :team, through: :application

  has_many :messages, dependent: :destroy
end
