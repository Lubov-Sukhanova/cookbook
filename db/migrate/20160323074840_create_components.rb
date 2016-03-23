class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.references :dish, index: true, foreign_key: true
      t.float :amount
      t.string :units
      t.references :ingredient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
