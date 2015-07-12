class AddMasterListIdToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :master_list_id, :integer
  end
end
