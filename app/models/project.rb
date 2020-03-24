class Project < ApplicationRecord
  belongs_to :ngo
  has_many_attached :photos
end
