class RemoveReferencesFromConversations < ActiveRecord::Migration[5.2]
  def change
    remove_column :conversations, :ngo_id
    remove_column :conversations, :team_id
    add_reference :conversations, :booking
  end
end
