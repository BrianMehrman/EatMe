class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :name
      t.string :body
      t.integer :track_id

      t.timestamps
    end
  end
end
