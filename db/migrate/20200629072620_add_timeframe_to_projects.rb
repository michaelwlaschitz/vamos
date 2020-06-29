class AddTimeframeToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :timeframe, :string
  end
end
