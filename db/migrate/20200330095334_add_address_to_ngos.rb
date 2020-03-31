class AddAddressToNgos < ActiveRecord::Migration[5.2]
  def change
    add_column :ngos, :address, :string
  end
end
