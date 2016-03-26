class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.references :dish, index: true, foreign_key: true
      t.float :amount
      t.string :measure_unit
      t.string :ingredient

      t.timestamps null: false
    end
  end
end
