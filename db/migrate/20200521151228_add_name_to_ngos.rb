class AddNameToNgos < ActiveRecord::Migration[5.2]
  def change
    add_column :ngos, :name, :string
  end
end
