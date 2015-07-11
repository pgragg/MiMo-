class CreateMasterLists < ActiveRecord::Migration
  def change
    create_table :master_lists do |t|

      t.timestamps null: false
    end
  end
end
