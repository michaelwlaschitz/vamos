class RemoveHoursperweekFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :hours_per_week
  end
end
