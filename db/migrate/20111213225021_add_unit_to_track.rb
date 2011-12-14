class AddUnitToTrack < ActiveRecord::Migration
  def change
    add_column :tracks, :unit, :string
  end
end
