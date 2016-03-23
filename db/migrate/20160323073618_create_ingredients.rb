class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :description
      t.string :alternative_name
      t.references :measure_unit, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
