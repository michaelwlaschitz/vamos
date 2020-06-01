class Review < ApplicationRecord
  belongs_to :user
  belongs_to :application

  validates :content, presence: true
  validates :rating, presence: true
end
