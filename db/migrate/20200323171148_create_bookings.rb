class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :status
      t.references :project, foreign_key: true
      t.references :team, foreign_key: true
      t.integer :hours_per_week

      t.timestamps
    end
  end
end
