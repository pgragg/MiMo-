class AddGroupIdToMasterLists < ActiveRecord::Migration
  def change
    add_column :master_lists, :name, :string
    add_column :list_subcategories, :name, :string
    add_column :list_categories, :name, :string
    add_column :master_lists, :group_id, :integer
  end
end
