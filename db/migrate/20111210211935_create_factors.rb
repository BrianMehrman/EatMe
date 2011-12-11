class CreateFactors < ActiveRecord::Migration
  def change
    create_table :factors do |t|
      t.string :NDB_No
      t.integer :track_id

      t.timestamps
    end
  end
end
