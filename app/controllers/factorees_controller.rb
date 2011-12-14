class FactoreesController < ApplicationController
  
  layout nil

  def index
    @factor = nil
    if params[:type]
      type = params[:type]
      if type == "FdGroup"
        @factoree_part = "groups"
      elsif type == "FoodDes"
        @factoree_part = "food"
      else
        @factoree_part = "nutrition"
      end
      puts @factoree_part 
      puts "the faction"
      respond_to do |format| 
        format.html
        format.js
      end
    end
  end

  def new
  
  end
end
