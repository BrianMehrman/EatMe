class NutData < ActiveRecord::Base
  #set_primary_key :NDB_No

  alias_attribute :n, :Nutr_Val

  belongs_to :definition, :class_name => "NutrDef", :foreign_key => "Nutr_No", :primary_key => "Nutr_No"

  # the value of Nutr_Val is the number of grams in 100 grams total,
  # which it makes it easy to calculate the amount in every 1 gram
  def value(consumption)
    v = (self.n * consumption.weight.Gm_Wgt * consumption.measurement ).to_f/100.0
    puts "v:#{v}"
    return v
  end
end
