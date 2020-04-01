class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user
  validates_presence_of :body

  def message_full_time
  created_at.strftime("%m/%d/%y at %H:%M")
  end

  def message_day
  created_at.strftime("%d %b")
  end

end
