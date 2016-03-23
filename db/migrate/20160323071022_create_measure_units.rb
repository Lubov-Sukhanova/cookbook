class CreateMeasureUnits < ActiveRecord::Migration
  def change
    create_table :measure_units do |t|
      t.string :standard_name
      t.string :nonstandard_name
      t.float :quantity_in_standard

      t.timestamps null: false
    end
  end
end
