module FactorsHelper
  class FactorType
    attr_accessor :name, :type
    def initialize(name,type)
      @name = name
      @type = type
    end
  end
  def factor_types
    return [ FactorType.new("Groups","FdGroup"),
      FactorType.new("Food","FoodDes"),
      FactorType.new("Nutrient","NutData")]
  end

  def get_factor_partial(type)
    if type == "FdGroup"
      return "factorees/groups"
    elsif type == "FoodDes"
      return "factorees/food"
    else
      return "factorees/nutrition"
    end
  end
end
