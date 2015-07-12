class AddUsersToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :users, :array 
    remove_column :groups, :user_id, :integer
  end
end
