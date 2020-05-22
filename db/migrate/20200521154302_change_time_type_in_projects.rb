class ChangeTimeTypeInProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :start_time
    remove_column :projects, :end_time
  end
end
