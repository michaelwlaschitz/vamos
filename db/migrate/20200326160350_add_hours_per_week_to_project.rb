class AddHoursPerWeekToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :hours_per_week, :integer
  end
end
