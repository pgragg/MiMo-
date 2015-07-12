class AddUserIdToListSubcategories < ActiveRecord::Migration
  def change
    add_column :list_subcategories, :user_id, :integer
  end
end
