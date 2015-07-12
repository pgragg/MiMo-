class AddMasterListIdToListCategories < ActiveRecord::Migration
  def change
    add_column :list_categories, :master_list_id, :integer
    add_column :list_subcategories, :list_category_id, :integer
    add_column :items, :list_subcategory_id, :integer
  end
end
