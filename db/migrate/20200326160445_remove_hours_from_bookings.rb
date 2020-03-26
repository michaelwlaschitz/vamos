class RemoveHoursFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :hours_per_week, :integer
  end
end
