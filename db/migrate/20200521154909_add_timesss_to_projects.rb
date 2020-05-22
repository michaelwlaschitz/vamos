class AddTimesssToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :start_time, :integer
    add_column :projects, :end_time, :integer
  end
end
