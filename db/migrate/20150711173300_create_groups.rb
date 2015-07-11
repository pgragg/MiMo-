class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.date :move_date

      t.timestamps null: false
    end
  end
end
