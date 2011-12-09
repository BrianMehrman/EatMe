class AddFoodController < ApplicationController
  def new
  
    @consumption = Consumption.new :food_id => params[:food_id]  

    #if session["meals-consumptions"]
    #  session["meals-consumptions"].push(@consumption)    
    #else
    #  session["meals-consumptions"] = [@consumption]
    #end
    # get items on current meal, add calories together
    respond_to do |format|
      format.html # new.html.haml
      format.js # new.js.erb
    end
  end

  def create

  end

  def destroy
  
  end

end
