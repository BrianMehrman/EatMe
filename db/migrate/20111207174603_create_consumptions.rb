class CreateConsumptions < ActiveRecord::Migration
  def change
    create_table :consumptions do |t|
      t.integer :food_id
      t.integer :meal_id
      t.float :measurement
      t.integer :weight_id

      t.timestamps
    end
  end
end
