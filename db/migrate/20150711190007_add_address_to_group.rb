class AddAddressToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :address, :string
    add_column :groups, :zip_code, :string
  end
end
