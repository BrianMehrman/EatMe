class Consumption < ActiveRecord::Base
  
  belongs_to :food, :class_name => "FoodDes", :foreign_key => "food_id", :primary_key => "id"
  belongs_to :meal
  belongs_to :weight, :class_name => "Weight", :foreign_key => "weight_id", :primary_key => "id"

end
