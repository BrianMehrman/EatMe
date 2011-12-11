class AddUserToFoodDes < ActiveRecord::Migration
  def up
    add_column :food_des, :user_id, :integer
  end

  def down
    remove_colum :food_des, :user_id
  end
end
