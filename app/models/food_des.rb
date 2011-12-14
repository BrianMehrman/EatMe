class FoodDes < ActiveRecord::Base
 
  alias_attribute :description, :Long_Desc
  alias_attribute :common_name, :ComName
  alias_attribute :manufacturer, :ManufacName

  has_many :nutrition_facts, :class_name => "NutData", :foreign_key => "NDB_No", :primary_key => "NDB_No"
  has_many :weights, :class_name => "Weight", :foreign_key => "NDB_No", :primary_key => "NDB_No"

  belongs_to :food_group, :class_name => "FdGroup", :foreign_key => "FdGrp_Cd", :primary_key => "FdGrp_CD"

  belongs_to :user, :class_name => "User", :foreign_key => "author_id", :primary_key => "id"
  has_many :factors, :as => :factoree

  def simple_name
    # TODO fix this hacky shit
    self.description.split(',')[0]
  end

  def units_of_measurement
    default_units = []
    # check to see if there is a set of related units of measurement
    if self.weights 
      # append on default units of measurement
      default_units += self.weights
    end 
    default_units
  end
end
