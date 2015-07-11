class CreateListCategories < ActiveRecord::Migration
  def change
    create_table :list_categories do |t|

      t.timestamps null: false
    end
  end
end
