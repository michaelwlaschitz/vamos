class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.integer :hours_per_week
      t.string :address
      t.text :description
      t.integer :capacity
      t.string :category
      t.references :ngo, foreign_key: true

      t.timestamps
    end
  end
end
