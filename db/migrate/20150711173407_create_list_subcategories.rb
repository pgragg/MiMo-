class CreateListSubcategories < ActiveRecord::Migration
  def change
    create_table :list_subcategories do |t|

      t.timestamps null: false
    end
  end
end
