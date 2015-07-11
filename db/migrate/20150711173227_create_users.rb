class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :budget
      t.string :first_name
      t.string :last_name
      t.string :address_from
      t.string :address_to

      t.timestamps null: false
    end
  end
end
