class CreateTrackings < ActiveRecord::Migration
  def change
    create_table :trackings do |t|
      t.integer :user_id
      t.integer :track_id
      t.float :goal
      t.time :time_frame
      t.integer :type

      t.timestamps
    end
  end
end
