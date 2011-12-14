class AddTrackIdToFactors < ActiveRecord::Migration
  def change
    add_column :factors, :name, :string
    add_column :factors, :factoree_id, :integer
    add_column :factors, :factoree_type, :string
    remove_column :factors, :NDB_No
  end
end
