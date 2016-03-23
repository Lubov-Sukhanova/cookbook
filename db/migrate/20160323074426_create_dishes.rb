class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :time_for_cook
      t.text :instructions
      t.string :appliances_used

      t.timestamps null: false
    end
  end
end
