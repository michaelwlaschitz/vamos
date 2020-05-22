class RemoveHoursPerWeekFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :start_date, :integer
  end
end
